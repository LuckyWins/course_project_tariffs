import 'package:course_project/domain/domain.dart';
import 'package:course_project/injection.dart' as di;
import 'package:course_project/presentation/blocs/blocs.dart';
import 'package:course_project/presentation/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

  /// Navigate to [TariffsFilterScreen]
  static Future<AppTariffsFilter?> toTariffsFilter(AppTariffsFilter filter) {
    beforeNavigate();
    return GoRouteClass.withoutCtx!.pushNamed(
      RouteNames.tariffsFilter,
      extra: filter,
    );
  }

  /// Navigate to [TariffEditScreen]
  static void toTariffEdit({AppTariff? data}) {
    beforeNavigate();
    return GoRouteClass.withoutCtx!.goNamed(
      RouteNames.tariffEdit,
      extra: data?.entity,
    );
  }

  /// Navigate to [ReservationsScreen]
  static void toReservations() {
    beforeNavigate();
    return GoRouteClass.withoutCtx!.goNamed(RouteNames.reservations);
  }

  /// Navigate to [ReservationEditScreen]
  static Future<void> toReservationEdit({
    AppReservation? data,
    int? tariffId,
    int? tariffOwnerId,
    int? userId,
  }) {
    beforeNavigate();
    return GoRouteClass.withoutCtx!.pushNamed(
      RouteNames.reservationEdit,
      extra: data?.entity,
      queryParameters: {
        'tariffId': tariffId?.toString(),
        'tariffOwnerId': tariffOwnerId?.toString(),
        if (userId != null) 'userId': userId.toString(),
      },
    );
  }

  /// Navigate to [ReservationViewScreen]
  static void toReservationView(AppReservation data) {
    beforeNavigate();
    return GoRouteClass.withoutCtx!.goNamed(
      RouteNames.reservationView,
      extra: data.entity,
    );
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

  /// Navigate to [ThemeSelectScreen]
  static Future<void> toThemeSelect() {
    beforeNavigate();
    return Navigator.of(GoRouteClass.withoutCtx!).push(
      MaterialPageRoute(
        builder: (context) => ThemeSelectScreen(
          settingsController: di.locator(),
        ),
      ),
    );
  }

  /// Navigate to [UserSelectScreen]
  static Future<AppUser?> userSelect({
    int? selectedId,
  }) {
    beforeNavigate();
    return Navigator.of(GoRouteClass.withoutCtx!).push(
      MaterialPageRoute(
        builder: (context) => BlocProvider<UsersListCubit>(
          create: (context) => UsersListCubit(
            usersRepository: di.locator(),
          ),
          child: UserSelectScreen(
            selectedId: selectedId,
          ),
        ),
      ),
    );
  }
}
