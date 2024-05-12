part of 'reservations_cubit.dart';

@freezed
class ReservationsState with _$ReservationsState {
  const factory ReservationsState.loading() = _Loading;
  const factory ReservationsState.hasData(
    List<AppReservation> data,
    AppReservationsFilter filter,
  ) = _HasData;
}
