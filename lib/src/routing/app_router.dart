

import 'package:daastane_ma/src/features/features.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'go_router_refresh_stream.dart';
import 'no_found_screen.dart';
part 'app_router.g.dart';

enum AppRoute {
  home,
  auth,
  splash,
}

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  // final authRepository = ref.watch(authRepositoryProvider);
  return GoRouter(
    initialLocation: SplashPage.routeName,
    debugLogDiagnostics: false,
    // redirect: (context, state) {
    //   final isLoggedIn = authRepository.currentUser != null;
    //   final path = state.uri.path;
    //   if (isLoggedIn) {
    //     if (path == '/signIn') {
    //       return '/';
    //     }
    //   } else {
    //     if (path == '/account' || path == '/orders') {
    //       return '/';
    //     }
    //   }
    //   return null;
    // },
    // refreshListenable: GoRouterRefreshStream(authRepository.authStateChanges()),
    routes: [
      GoRoute(
        path: SplashPage.routeName,
        name: AppRoute.splash.name,
        pageBuilder: (context, state) => const MaterialPage(
          fullscreenDialog: true,
          child: SplashPage(),
        ),
      ),
      GoRoute(
        path: AuthenticationPage.routeName,
        name: AppRoute.auth.name,
        pageBuilder: (context, state) => const MaterialPage(
          fullscreenDialog: true,
          child: AuthenticationPage(),
        ),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => const Scaffold(),
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
}