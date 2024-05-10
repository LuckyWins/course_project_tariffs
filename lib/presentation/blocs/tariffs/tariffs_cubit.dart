import 'package:bloc/bloc.dart';
import 'package:course_project/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tariffs_cubit.freezed.dart';
part 'tariffs_state.dart';

class TariffsCubit extends Cubit<TariffsState> {
  final TariffsRepository tariffsRepository;

  AppTariffsFilter? _filter;

  TariffsCubit({
    required this.tariffsRepository,
  }) : super(const TariffsState.loading());

  Future<void> init({
    AppTariffsFilter? filter,
  }) async {
    emit(const TariffsState.loading());

    _filter ??= AppTariffsFilter.empty();
    final data = await tariffsRepository.getTariffsList(_filter!);

    emit(TariffsState.hasData(data));
  }
}
