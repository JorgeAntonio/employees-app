import 'package:attendance_app/src/features/auth/screens/sign_in_screen.dart';
import 'package:attendance_app/src/features/base/screens/main_screen.dart';
import 'package:attendance_app/src/features/history/history_screen.dart';
import 'package:attendance_app/src/features/home/sccreens/home_screen.dart';
import 'package:attendance_app/src/features/profile/profile_screen.dart';
import 'package:attendance_app/src/features/scanner/screen/scanner_screen.dart';
import 'package:attendance_app/src/features/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'router.dart';

int _getTabIndexFromLocation(String location) {
  if (location.contains(Routes.home.path)) {
    return 0;
  }
  if (location.contains(Routes.scanner.path)) {
    return 1;
  }
  if (location.contains(Routes.history.path)) {
    return 2;
  }

  return 0; // Default to home if no match
}

final _rootNavigatorkey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<StatefulNavigationShellState>();

final routerProvider = Provider<GoRouter>((ref) {
  // final session = ref.watch(sessionProvider);

  return GoRouter(
    navigatorKey: _rootNavigatorkey,
    debugLogDiagnostics: true,
    initialLocation: Routes.welcome.path,
    routes: [
      GoRoute(
        path: Routes.welcome.path,
        name: Routes.welcome.name,
        // parentNavigatorKey: _rootNavigatorkey,
        builder: (context, state) {
          return const WelcomeScreen();
        },
      ),
      GoRoute(
        path: Routes.signin.path,
        name: Routes.signin.name,
        // parentNavigatorKey: _rootNavigatorkey,
        builder: (context, state) {
          return const SignInScreen();
        },
      ),
      GoRoute(
        path: Routes.profile.path,
        name: Routes.profile.name,
        builder: (context, state) => const ProfileScreen(),
      ),

      StatefulShellRoute.indexedStack(
        key: _shellNavigatorKey,
        builder: (context, state, child) {
          final currentIndex = _getTabIndexFromLocation(state.uri.path);

          return MainScreen(
            currentIndex: currentIndex,
            onTabSelected: (index) {
              final paths = [
                Routes.home.path,
                Routes.scanner.path,
                Routes.history.path,
              ];
              GoRouter.of(context).go(paths[index]);
            },
            child: child,
          );
        },
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.home.path,
                name: Routes.home.name,
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.scanner.path,
                name: Routes.scanner.name,
                builder: (context, state) => const ScannerScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.history.path,
                name: Routes.history.name,
                builder: (context, state) => const HistoryScreen(),
              ),
            ],
          ),
        ],
      ),
    ],

    // redirect: (context, state) {
    //   // If our async state is loading, don't perform redirects, yet
    //   if (session.isLoading || session.hasError) return null;

    //   final isAuth = session.valueOrNull != null;
    //   final currentPath = state.matchedLocation;

    //   // Si estamos en la página de login y no estamos autenticados, no redirigir
    //   if (currentPath == Routes.signin.path && !isAuth) {
    //     return null;
    //   }

    //   // Si estamos en la página de splash, redirigir según el estado de autenticación
    //   if (currentPath == Routes.splash.path) {
    //     return isAuth ? Routes.home.path : Routes.signin.path;
    //   }

    //   // Si estamos autenticados y en una página de autenticación, ir a home
    //   if (isAuth &&
    //       (currentPath == Routes.signin.path ||
    //           currentPath == Routes.splash.path)) {
    //     return Routes.home.path;
    //   }

    //   // Si no estamos autenticados y no estamos en una página pública, ir a splash
    //   if (!isAuth &&
    //       currentPath != Routes.signin.path &&
    //       currentPath != Routes.splash.path) {
    //     return Routes.splash.path;
    //   }

    //   // En cualquier otro caso, no redirigir
    //   return null;
    // },
  );
});
