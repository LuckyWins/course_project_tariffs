import 'package:bloc/bloc.dart';
import 'package:course_project/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tariff_data_cubit.freezed.dart';
part 'tariff_data_state.dart';

class TariffDataCubit extends Cubit<TariffDataState> {
  final TariffsRepository tariffsRepository;

  TariffDataCubit({
    required this.tariffsRepository,
  }) : super(const TariffDataState.loading());

  Future<void> init(int? id) async {
    emit(const TariffDataState.loading());

    if (id == null) {
      emit(const TariffDataState.hasData(null));
      return;
    }

    final data = await tariffsRepository.getTariff(id);

    emit(TariffDataState.hasData(data));
  }
}
