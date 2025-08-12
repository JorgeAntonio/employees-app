import 'package:attendance_app/src/features/auth/presentation/providers/session_provider.dart';
import 'package:attendance_app/src/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:attendance_app/src/features/base/screens/main_screen.dart';
import 'package:attendance_app/src/features/dashboard/screens/dashboard_screen.dart';
import 'package:attendance_app/src/features/history/history_screen.dart';
import 'package:attendance_app/src/features/home/presentation/sccreens/home_screen.dart';
import 'package:attendance_app/src/features/profile/profile_screen.dart';
import 'package:attendance_app/src/features/scanner/screen/scanner_screen.dart';
import 'package:attendance_app/src/features/welcome/welcome_screen.dart';
import 'package:attendance_app/src/features/attendance/presentation/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'router.dart';

int _getTabIndexFromLocation(String location) {
  if (location.contains(Routes.home.path)) {
    return 0;
  }
  if (location.contains(Routes.history.path)) {
    return 1;
  }
  if (location.contains(Routes.scanner.path)) {
    return 0; // When in scanner, show home as selected
  }

  return 0; // Default to home if no match
}

final _rootNavigatorkey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<StatefulNavigationShellState>();

final routerProvider = Provider<GoRouter>((ref) {
  final session = ref.watch(sessionProvider);

  return GoRouter(
    navigatorKey: _rootNavigatorkey,
    debugLogDiagnostics: true,
    initialLocation: Routes.signin.path,
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
      GoRoute(
        path: Routes.scanner.path,
        name: Routes.scanner.name,
        builder: (context, state) => const ScannerScreen(),
      ),

      GoRoute(
        path: Routes.dashboard.path,
        name: Routes.dashboard.name,
        builder: (context, state) => const DashboardScreen(),
      ),

      GoRoute(
          path: Routes.validateCode.path,
          name: Routes.validateCode.name,
          builder: (context, state) => const ValidateCodeScreen(),
        ),
        GoRoute(
          path: Routes.confirmAttendance.path,
          name: Routes.confirmAttendance.name,
          builder: (context, state) => const ConfirmAttendanceScreen(),
        ),

      StatefulShellRoute.indexedStack(
        key: _shellNavigatorKey,
        builder: (context, state, child) {
          final currentIndex = _getTabIndexFromLocation(state.uri.path);

          return MainScreen(
            currentIndex: currentIndex,
            onTabSelected: (index) {
              final paths = [Routes.home.path, Routes.history.path];
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
                path: Routes.history.path,
                name: Routes.history.name,
                builder: (context, state) => const HistoryScreen(),
              ),
            ],
          ),
        ],
      ),
    ],

    redirect: (context, state) {
      // If our async state is loading, don't perform redirects, yet
      if (session.isLoading) {
        return null;
      }

      final isAuth = session.value != null;
      final currentPath = state.matchedLocation;

      // Si hay un error y estamos en signin, no redirigir (dejar que se muestre el error)
      if (session.hasError && currentPath == Routes.signin.path) {
        return null;
      }

      // Si estamos en la página de welcome y no estamos autenticados, ir a signin
      if (currentPath == Routes.welcome.path && !isAuth) {
        return Routes.signin.path;
      }

      // Si estamos en la página de signin y no estamos autenticados, no redirigir
      if (currentPath == Routes.signin.path && !isAuth) {
        return null;
      }

      // Si estamos autenticados y en una página de autenticación, ir a home
      if (isAuth &&
          (currentPath == Routes.signin.path ||
              currentPath == Routes.welcome.path)) {
        return Routes.home.path;
      }

      // Si no estamos autenticados y no estamos en una página pública, ir a signin
      if (!isAuth &&
          currentPath != Routes.signin.path &&
          currentPath != Routes.welcome.path) {
        return Routes.signin.path;
      }

      return null;
    },
  );
});
