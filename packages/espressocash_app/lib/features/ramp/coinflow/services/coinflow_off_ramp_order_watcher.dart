import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dfunc/dfunc.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:solana/encoder.dart';

import '../../../../data/db/db.dart';
import '../../../accounts/models/ec_wallet.dart';
import '../../data/my_database_ext.dart';
import '../../src/models/ramp_watcher.dart';
import '../data/coinflow_api_client.dart';

@injectable
class CoinflowOffRampOrderWatcher implements RampWatcher {
  CoinflowOffRampOrderWatcher(this._db, this._client, this._account);

  final MyDatabase _db;
  final CoinflowClient _client;
  final ECWallet _account;

  StreamSubscription<void>? _subscription;

  @override
  void watch(String orderId) {
    _subscription = Stream<void>.periodic(const Duration(seconds: 10))
        .startWith(null)
        .asyncMap((_) => _db.getWaitingForPartnerOffRampOrder(orderId))
        .whereNotNull()
        .asyncMap(
          (order) => _client.getWithdrawalHistory(_account.address).letAsync(
                (response) => response.withdraws.firstWhereOrNull(
                  (e) => e.transaction == SignedTx.decode(order.transaction).id,
                ),
              ),
        )
        .listen((event) async {
      final statement = _db.update(_db.offRampOrderRows)
        ..where(
          (tbl) =>
              tbl.id.equals(orderId) &
              tbl.status.equals(OffRampOrderStatus.waitingForPartner.name),
        );

      final status = switch (event?.status) {
        CoinflowOrderStatus.completed => OffRampOrderStatus.completed,
        CoinflowOrderStatus.failed => OffRampOrderStatus.failure,
        CoinflowOrderStatus.created ||
        CoinflowOrderStatus.unknown ||
        CoinflowOrderStatus.pending ||
        null =>
          OffRampOrderStatus.waitingForPartner,
      };

      if (status == OffRampOrderStatus.completed) await _subscription?.cancel();

      await statement.write(OffRampOrderRowsCompanion(status: Value(status)));
    });
  }

  @override
  void close() {
    _subscription?.cancel();
  }
}
