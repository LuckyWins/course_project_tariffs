import 'package:dartx/dartx.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_tariffs_filter.freezed.dart';
part 'app_tariffs_filter.g.dart';

@freezed
class AppTariffsFilter with _$AppTariffsFilter {
  const AppTariffsFilter._();
  const factory AppTariffsFilter({
    int? ownerId,
    String? titleQuery,
    DateTime? creationDate,
    @Default(true) bool asc,
    @Default(AppTariffsSortType.creationDate) AppTariffsSortType sort,
  }) = _AppTariffsFilter;

  bool get isEmpty => !(titleQuery.isNotNullOrBlank || creationDate != null);

  factory AppTariffsFilter.emptyAdmin(int ownerId) =>
      AppTariffsFilter(ownerId: ownerId);

  factory AppTariffsFilter.emptyUser() => const AppTariffsFilter();

  factory AppTariffsFilter.fromJson(Map<String, dynamic> json) =>
      _$AppTariffsFilterFromJson(json);

  AppTariffsFilter clear() => copyWith(
        titleQuery: null,
        creationDate: null,
      );
}

enum AppTariffsSortType {
  creationDate,
  price,
}
