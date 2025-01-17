import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:espressocash_api/espressocash_api.dart';
import 'package:retrofit/retrofit.dart';

part 'client.g.dart';

typedef SignRequest = Future<({String publicKey, String signature})?> Function(
  String data,
);

@RestApi(baseUrl: 'https://cryptoplease-link.web.app/api/v1')
abstract class CryptopleaseClient {
  factory CryptopleaseClient({
    String? baseUrl,
    required SignRequest sign,
  }) =>
      _CryptopleaseClient(
        Dio()
          ..interceptors.add(
            QueuedInterceptorsWrapper(
              onRequest: (options, handler) async {
                final data =
                    options.data == null ? '' : jsonEncode(options.data);
                final signed = await sign(data);
                if (signed != null) {
                  options.headers['x-public-key'] = signed.publicKey;
                  options.headers['x-signature'] = signed.signature;
                }

                return handler.next(options);
              },
            ),
          ),
        baseUrl: baseUrl,
      );

  @POST('/createDirectPayment')
  Future<CreateDirectPaymentResponseDto> createDirectPayment(
    @Body() CreateDirectPaymentRequestDto request,
  );

  @POST('/getFees')
  Future<GetFeesResponseDto> getFees();

  @POST('/getSwapRoute')
  Future<SwapRouteResponseDto> getSwapRoute(
    @Body() SwapRouteRequestDto request,
  );

  @POST('/escrow/create')
  Future<CreatePaymentResponseDto> createPaymentEc(
    @Body() CreatePaymentRequestDto request,
  );

  @POST('/escrow/receive')
  Future<ReceivePaymentResponseDto> receivePaymentEc(
    @Body() ReceivePaymentRequestDto request,
  );

  @POST('/escrow/cancel')
  Future<CancelPaymentResponseDto> cancelPaymentEc(
    @Body() CancelPaymentRequestDto request,
  );

  @POST('/scalex/generate')
  Future<GenerateScalexLinkResponseDto> generateScalexLink(
    @Body() GenerateScalexLinkRequestDto request,
  );

  @POST('/scalex/fetch')
  Future<OrderStatusScalexResponseDto> fetchScalexTransaction(
    @Body() OrderStatusScalexRequestDto referenceId,
  );
}
