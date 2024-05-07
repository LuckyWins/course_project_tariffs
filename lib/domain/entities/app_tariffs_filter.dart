import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_tariffs_filter.freezed.dart';

@freezed
class AppTariffsFilter with _$AppTariffsFilter {
  const factory AppTariffsFilter({
    String? titleQuery,
    DateTime? creationDate,
    @Default(true) bool asc,
    @Default(AppTariffsSortType.creationDate) AppTariffsSortType sort,
  }) = _AppTariffsFilter;

  factory AppTariffsFilter.empty() => const AppTariffsFilter();
}

enum AppTariffsSortType {
  creationDate,
  price,
}
