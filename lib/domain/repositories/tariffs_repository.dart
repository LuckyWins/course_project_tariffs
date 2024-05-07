import 'package:course_project/domain/domain.dart';

abstract class TariffsRepository {
  Future<List<AppTariff>> getTariffsList(AppTariffsFilter filter);

  Future<AppTariff?> getTariff(int id);

  /// create or update
  Future<void> putTariff(AppTariff data);

  Future<void> deleteTariff(int id);
}
