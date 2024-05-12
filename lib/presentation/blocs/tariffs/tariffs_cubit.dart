import 'package:bloc/bloc.dart';
import 'package:course_project/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tariffs_cubit.freezed.dart';
part 'tariffs_state.dart';

class TariffsCubit extends Cubit<TariffsState> {
  final TariffsRepository tariffsRepository;

  AppTariffsFilter? _filter;

  late int _userId;

  TariffsCubit({
    required this.tariffsRepository,
  }) : super(const TariffsState.loading());

  void setUserId(int id) {
    _userId = id;
  }

  Future<void> init({
    AppTariffsFilter? filter,
  }) async {
    emit(const TariffsState.loading());

    _filter = filter ?? _filter ?? AppTariffsFilter.empty(_userId);
    final data = await tariffsRepository.getTariffsList(_filter!);

    emit(TariffsState.hasData(data, _filter!));
  }

  void onLogOut() {
    _filter = null;
  }
}
