import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';

import 'di.dart';
import 'features/accounts/services/accounts_bloc.dart';
import 'features/analytics/analytics_manager.dart';
import 'features/app_lock/app_lock.dart';
import 'features/authenticated/screens/authenticated_flow_screen.dart';
import 'features/sign_in/screens/sign_in_flow_screen.dart';
import 'l10n/gen/app_localizations.dart';
import 'routes.dart';
import 'ui/splash_screen.dart';
import 'ui/theme.dart';

class CryptopleaseApp extends StatefulWidget {
  const CryptopleaseApp({super.key});

  @override
  State<CryptopleaseApp> createState() => _CryptopleaseAppState();
}

class _CryptopleaseAppState extends State<CryptopleaseApp> {
  final _router = AppRouter();
  StreamSubscription<void>? _nativeSplashSubscription;

  @override
  void initState() {
    super.initState();
    _nativeSplashSubscription = context
        .read<AccountsBloc>()
        .stream
        .map((event) => event.isProcessing)
        .where((event) => !event)
        .take(1)
        .listen((event) => FlutterNativeSplash.remove());
  }

  @override
  void dispose() {
    _nativeSplashSubscription?.cancel();
    _router.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isLoading =
        context.select<AccountsBloc, bool>((b) => b.state.isProcessing);
    final isAuthenticated =
        context.select<AccountsBloc, bool>((b) => b.state.account != null);

    return CpTheme(
      theme: const CpThemeData.light(),
      child: Builder(
        builder: (context) => MaterialApp.router(
          routeInformationParser: _router.defaultRouteParser(),
          routerDelegate: AutoRouterDelegate.declarative(
            _router,
            routes: (_) => [
              if (isAuthenticated)
                AuthenticatedFlowScreen.route()
              else if (isLoading)
                SplashScreen.route()
              else
                SignInFlowScreen.route(),
            ],
            navigatorObservers: () => [
              sl<AnalyticsManager>().analyticsObserver,
            ],
          ),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          debugShowCheckedModeBanner: false,
          title: 'Espresso Cash',
          theme: context.watch<CpThemeData>().toMaterialTheme(),
          builder: (context, child) => AppLockModule(child: child),
        ),
      ),
    );
  }
}
