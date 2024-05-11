part of 'tariffs_cubit.dart';

@freezed
class TariffsState with _$TariffsState {
  const factory TariffsState.loading() = _Loading;
  const factory TariffsState.hasData(
    List<AppTariff> data,
    AppTariffsFilter filter,
  ) = _HasData;
}
