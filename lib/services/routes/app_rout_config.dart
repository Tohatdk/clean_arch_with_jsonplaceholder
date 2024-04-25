import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:progress_bar/features/auth_feature/presentation/login_page.dart';
import 'package:progress_bar/services/routes/app_route_paths.dart';

class AppRouteConfig {
  final rootNaveKey = GlobalKey<NavigatorState>(debugLabel: 'rooNav');

  GoRouter router() {
    return GoRouter(
      navigatorKey: rootNaveKey,
      debugLogDiagnostics: true,
      initialLocation: '/',
      redirect: (context, state) => AppRoutePaths.auth,
      routes: _routes,
    );
  }

  List<RouteBase> get _routes => <RouteBase>[
        GoRoute(
            path: AppRoutePaths.auth,
            builder: (context, state) => const LoginPage()),
        // GoRoute(
        //   path: AppRoutePaths.auth,
        //   builder: (c,s) => const AuthP
        // ),
      ];
}
