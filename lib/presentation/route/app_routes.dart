import 'package:course_project/domain/domain.dart';
import 'package:course_project/presentation/screens/screens.dart';
import 'package:course_project/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app_error_route_widget.dart';
import 'app_route_names.dart';

///GoRouter - declarative navigation
///how to use?
///in UI just call [context.go] or [context.push]
///to pass data use [extra] for objects, [params] or [queryParams] for String
///when you use [context.push] you can pop back screen, with [context.go] you can't
///if you write nested navigation just use [routes] array in [GoRoute] class
///also use [name] for call link and [path]
///don't use [/] if route is nested

final GlobalKey<NavigatorState> rootNavigator = GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigator =
    GlobalKey(debugLabel: 'shell');

class GoRouteClass {
  bool isDuplicate = false;

  static Page<T> defaultPageBuilder<T>({
    required String? name,
    required Widget child,
    required LocalKey? key,
  }) =>
      MaterialPage<T>(
        name: name,
        child: child,
        key: key,
      );

  static final route = GoRouter(
    navigatorKey: rootNavigator,
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: RouteNames.splash,
        pageBuilder: (context, state) => defaultPageBuilder(
          name: state.name,
          key: state.pageKey,
          child: const SplashScreen(),
        ),
      ),
      GoRoute(
        path: '/signIn',
        name: RouteNames.signIn,
        pageBuilder: (context, state) => defaultPageBuilder(
          name: state.name,
          key: state.pageKey,
          child: const SignInScreen(),
        ),
      ),
      GoRoute(
        path: '/signUp',
        name: RouteNames.signUp,
        pageBuilder: (context, state) => defaultPageBuilder(
          name: state.name,
          key: state.pageKey,
          child: const SignUpScreen(),
        ),
      ),
      // bottom nav bar
      ShellRoute(
        navigatorKey: _shellNavigator,
        // pageBuilder: (context, state, child) => defaultPageBuilder(
        //   name: state.name,
        //   key: state.pageKey,
        //   withAnimation: false,
        //   //child: child,
        //   child: MainScreenWrapper(
        //     key: state.pageKey,
        //     child: child,
        //   ),
        // ),
        builder: (context, state, child) => MainScreenWrapper(
          //key: state.pageKey,
          currentTab: switch (state.uri.path) {
            final p when p.startsWith('/${RouteNames.tariffs}') =>
              MenuTab.tariffs,
            final p when p.startsWith('/${RouteNames.reservations}') =>
              MenuTab.reservations,
            final p when p.startsWith('/${RouteNames.profile}') =>
              MenuTab.profile,
            _ => MenuTab.profile,
          },
          child: child,
        ),
        routes: [
          GoRoute(
            path: '/tariffs',
            parentNavigatorKey: _shellNavigator,
            name: RouteNames.tariffs,
            pageBuilder: (context, state) => defaultPageBuilder(
              name: state.name,
              key: state.pageKey,
              child: const TariffsScreen(),
            ),
          ),
          GoRoute(
            path: '/reservations',
            parentNavigatorKey: _shellNavigator,
            name: RouteNames.reservations,
            pageBuilder: (context, state) => defaultPageBuilder(
              name: state.name,
              key: state.pageKey,
              child: const ReservationsScreen(),
            ),
          ),
          GoRoute(
            path: '/profile',
            parentNavigatorKey: _shellNavigator,
            name: RouteNames.profile,
            pageBuilder: (context, state) => defaultPageBuilder(
              name: state.name,
              key: state.pageKey,
              child: const ProfileScreen(),
            ),
          ),
        ], // must be home page
      ),
    ],
    debugLogDiagnostics: true,
    errorBuilder: (context, state) => RouteErrorScreen(
      errorMsg: state.error.toString(),
      key: state.pageKey,
    ),
  );

  static BuildContext? get withoutCtx => rootNavigator.currentContext;

  static BuildContext? get shellNoCtx => _shellNavigator.currentContext;
}
