import 'package:bloc/bloc.dart';
import 'package:course_project/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tariff_edit_cubit.freezed.dart';
part 'tariff_edit_state.dart';

class TariffEditCubit extends Cubit<TariffEditState> {
  final TariffsRepository tariffsRepository;
  final int userId;
  final AppTariffEntity? initialTariff;

  late AppTariffEntity _tariff;

  TariffEditCubit({
    required this.tariffsRepository,
    required this.userId,
    required this.initialTariff,
  }) : super(const TariffEditState.loading());

  Future<void> init() async {
    emit(const TariffEditState.loading());

    _tariff = initialTariff ?? AppTariffEntity.empty(ownerId: userId);

    emit(TariffEditState.hasData(_tariff));
  }

  Future<void> update(AppTariffEntity data) async {
    emit(const TariffEditState.loading());

    await tariffsRepository.putTariff(data.dto);

    emit(const TariffEditState.updatedSuccessful());
    emit(TariffEditState.hasData(data));
  }

  Future<void> delete() async {
    emit(const TariffEditState.loading());

    await tariffsRepository.deleteTariff(_tariff.id);

    emit(const TariffEditState.deletedSuccessful());
  }
}
