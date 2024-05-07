import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_reservations_filter.freezed.dart';

@freezed
class AppReservationsFilter with _$AppReservationsFilter {
  const factory AppReservationsFilter({
    int? tariffId,
    int? userId,
    DateTime? creationDate,
    int? hours,
    @Default(true) bool asc,
    @Default(AppReservationsSortType.creationDate) AppReservationsSortType sort,
  }) = _AppReservationsFilter;

  factory AppReservationsFilter.empty() => const AppReservationsFilter();
}

enum AppReservationsSortType {
  creationDate,
  hours,
}
