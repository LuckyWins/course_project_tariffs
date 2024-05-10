import 'package:course_project/presentation/utils/utils.dart';

import 'route/route.dart';
import 'screens/screens.dart';

// ignore: avoid_classes_with_only_static_members
/// Simple static class to aggregate navigation
class Navigation {
  static Future<void> beforeNavigate() => AppActions.hideKeyboard();

  /// Navigate to [SplashScreen]
  static void toSplash() {
    beforeNavigate();
    return GoRouteClass.withoutCtx!.goNamed(RouteNames.splash);
  }

  /// Navigate to [SignInScreen]
  static void toSignIn() {
    beforeNavigate();
    return GoRouteClass.withoutCtx!.goNamed(RouteNames.signIn);
  }

  /// Navigate to [SignUpScreen]
  static void toSignUp() {
    beforeNavigate();
    return GoRouteClass.withoutCtx!.goNamed(RouteNames.signUp);
  }

  /// Navigate to [TariffsScreen]
  static void toTariffs() {
    beforeNavigate();
    return GoRouteClass.withoutCtx!.goNamed(RouteNames.tariffs);
  }

  /// Navigate to [ReservationsScreen]
  static void toReservations() {
    beforeNavigate();
    return GoRouteClass.withoutCtx!.goNamed(RouteNames.reservations);
  }

  /// Navigate to [SettingsScreen]
  static void toSettings() {
    beforeNavigate();
    return GoRouteClass.withoutCtx!.goNamed(RouteNames.settings);
  }

  /// Navigate to [ProfileEditScreen]
  static Future<void> toProfileEdit() {
    beforeNavigate();
    return GoRouteClass.withoutCtx!.pushNamed(RouteNames.profileEdit);
  }
}
