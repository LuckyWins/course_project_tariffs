import 'package:bloc/bloc.dart';
import 'package:course_project/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation_edit_cubit.freezed.dart';
part 'reservation_edit_state.dart';

class ReservationEditCubit extends Cubit<ReservationEditState> {
  final ReservationsRepository reservationsRepository;
  final int tariffId;
  final int tariffOwnerId;
  final int? userId;
  final AppReservationEntity? initialReservation;

  late AppReservationEntity _reservation;

  ReservationEditCubit({
    required this.reservationsRepository,
    required this.tariffId,
    required this.tariffOwnerId,
    required this.userId,
    required this.initialReservation,
  }) : super(const ReservationEditState.loading());

  Future<void> init() async {
    emit(const ReservationEditState.loading());

    _reservation = initialReservation ??
        AppReservationEntity.empty(
          tariffId: tariffId,
          tariffOwnerId: tariffOwnerId,
          // -1 == user not selected, only admin mode. display user selector
          userId: userId ?? -1,
        );

    emit(ReservationEditState.hasData(_reservation));
  }

  Future<void> update(AppReservationEntity data) async {
    emit(const ReservationEditState.loading());

    await reservationsRepository.putReservation(data.dto);

    emit(const ReservationEditState.updatedSuccessful());
    emit(ReservationEditState.hasData(data));
  }

  Future<void> cancel() async {
    emit(const ReservationEditState.loading());

    await reservationsRepository.putReservation(
        _reservation.dto..status = AppReservationStatus.cancelled);

    emit(const ReservationEditState.cancelledSuccessful());
  }
}
