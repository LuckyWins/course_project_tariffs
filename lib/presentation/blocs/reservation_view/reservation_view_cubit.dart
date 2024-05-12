import 'package:bloc/bloc.dart';
import 'package:course_project/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation_view_cubit.freezed.dart';
part 'reservation_view_state.dart';

class ReservationViewCubit extends Cubit<ReservationViewState> {
  final ReservationsRepository reservationsRepository;
  final AppReservationEntity reservation;

  ReservationViewCubit({
    required this.reservationsRepository,
    required this.reservation,
  }) : super(const ReservationViewState.loading());

  Future<void> init() async {
    emit(const ReservationViewState.loading());

    emit(ReservationViewState.hasData(reservation));
  }

  Future<void> cancel() async {
    emit(const ReservationViewState.loading());

    await reservationsRepository.putReservation(
        reservation.dto..status = AppReservationStatus.cancelled);

    emit(const ReservationViewState.cancelledSuccessful());
  }
}
