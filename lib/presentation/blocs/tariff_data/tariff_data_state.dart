part of 'tariff_data_cubit.dart';

@freezed
class TariffDataState with _$TariffDataState {
  const factory TariffDataState.loading() = _Loading;
  const factory TariffDataState.hasData(AppTariff? data) = _HasData;
}
