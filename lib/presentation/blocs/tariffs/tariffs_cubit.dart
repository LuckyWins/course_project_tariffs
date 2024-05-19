import 'package:bloc/bloc.dart';
import 'package:course_project/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tariffs_cubit.freezed.dart';
part 'tariffs_state.dart';

class TariffsCubit extends Cubit<TariffsState> {
  final TariffsRepository tariffsRepository;

  AppTariffsFilter? _filter;

  late int _userId;
  late bool _isAdmin;

  TariffsCubit({
    required this.tariffsRepository,
  }) : super(const TariffsState.loading());

  void setUser(int id, UserRole role) {
    _userId = id;
    _isAdmin = role == UserRole.admin;
  }

  Future<void> init({
    AppTariffsFilter? filter,
  }) async {
    emit(const TariffsState.loading());

    _filter = filter ??
        _filter ??
        (_isAdmin
            ? AppTariffsFilter.emptyAdmin(_userId)
            : AppTariffsFilter.emptyUser());
    final data = await tariffsRepository.getTariffsList(_filter!);

    emit(TariffsState.hasData(data, _filter!));
  }

  void onLogOut() {
    _filter = null;
    emit(const TariffsState.loading());
  }
}
