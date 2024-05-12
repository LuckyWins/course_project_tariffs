part of 'reservation_edit_cubit.dart';

@freezed
class ReservationEditState with _$ReservationEditState {
  const factory ReservationEditState.loading() = _Loading;
  const factory ReservationEditState.hasData(AppReservationEntity data) =
      _HasData;
  const factory ReservationEditState.updatedSuccessful() = _UpdatedSuccessful;
  const factory ReservationEditState.cancelledSuccessful() =
      _CancelledSuccessful;
}
