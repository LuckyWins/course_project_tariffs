import 'package:bloc/bloc.dart';
import 'package:course_project/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservations_cubit.freezed.dart';
part 'reservations_state.dart';

class ReservationsCubit extends Cubit<ReservationsState> {
  final ReservationsRepository reservationsRepository;

  AppReservationsFilter? _filter;

  late int _userId;
  late bool _isAdmin;

  ReservationsCubit({
    required this.reservationsRepository,
  }) : super(const ReservationsState.loading());

  void setUser(int id, UserRole role) {
    _userId = id;
    _isAdmin = role == UserRole.admin;
  }

  Future<void> init({
    AppReservationsFilter? filter,
  }) async {
    emit(const ReservationsState.loading());

    _filter = filter ??
        _filter ??
        (_isAdmin
            ? AppReservationsFilter.emptyAdmin(tariffOwnerId: _userId)
            : AppReservationsFilter.emptyUser(userId: _userId));
    final data = await reservationsRepository.getReservationsList(_filter!);

    emit(ReservationsState.hasData(data, _filter!));
  }

  void onLogOut() {
    _filter = null;
  }
}
