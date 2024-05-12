part of 'reservation_view_cubit.dart';

@freezed
class ReservationViewState with _$ReservationViewState {
  const factory ReservationViewState.loading() = _Loading;
  const factory ReservationViewState.hasData(AppReservationEntity data) =
      _HasData;
  const factory ReservationViewState.cancelledSuccessful() =
      _CancelledSuccessful;
}
