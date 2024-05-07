import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_users_filter.freezed.dart';

@freezed
class AppUsersFilter with _$AppUsersFilter {
  const factory AppUsersFilter({
    String? usernameQuery,
    DateTime? registrationDate,
    @Default(true) bool asc,
    @Default(AppUsersSortType.registrationDate) AppUsersSortType sort,
  }) = _AppUsersFilter;

  factory AppUsersFilter.empty() => const AppUsersFilter();
}

enum AppUsersSortType {
  registrationDate,
  username,
}
