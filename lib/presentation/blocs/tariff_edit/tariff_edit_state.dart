part of 'tariff_edit_cubit.dart';

@freezed
class TariffEditState with _$TariffEditState {
  const factory TariffEditState.loading() = _Loading;
  const factory TariffEditState.hasData(AppTariffEntity data) = _HasData;
  const factory TariffEditState.updatedSuccessful() = _UpdatedSuccessful;
  const factory TariffEditState.deletedSuccessful() = _DeletedSuccessful;
}
