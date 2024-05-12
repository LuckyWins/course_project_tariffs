import 'package:course_project/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_reservations_filter.freezed.dart';
part 'app_reservations_filter.g.dart';

@freezed
class AppReservationsFilter with _$AppReservationsFilter {
  const AppReservationsFilter._();
  const factory AppReservationsFilter({
    int? tariffId,
    int? tariffOwnerId,
    int? userId,
    DateTime? startDate,
    int? hours,
    AppReservationStatus? status,
    @Default(true) bool asc,
    @Default(AppReservationsSortType.creationDate) AppReservationsSortType sort,
  }) = _AppReservationsFilter;

  bool get isEmpty => !(startDate != null || hours != null || status != null);

  factory AppReservationsFilter.emptyUser({
    required int userId,
  }) =>
      AppReservationsFilter(
        userId: userId,
      );

  factory AppReservationsFilter.emptyAdmin({
    required int tariffOwnerId,
  }) =>
      AppReservationsFilter(
        tariffOwnerId: tariffOwnerId,
      );

  factory AppReservationsFilter.fromJson(Map<String, dynamic> json) =>
      _$AppReservationsFilterFromJson(json);

  AppReservationsFilter clear() => copyWith(
        startDate: null,
        hours: null,
        status: null,
      );
}

enum AppReservationsSortType {
  creationDate,
  hours,
}
