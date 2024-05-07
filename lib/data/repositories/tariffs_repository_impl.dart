import 'package:course_project/domain/domain.dart';
import 'package:dartx/dartx.dart';
import 'package:isar/isar.dart';

class TariffsRepositoryImpl extends TariffsRepository {
  final Isar db;

  TariffsRepositoryImpl({
    required this.db,
  });

  @override
  Future<List<AppTariff>> getTariffsList(AppTariffsFilter filter) =>
      db.appTariffs.buildQuery<AppTariff>(
        filter: FilterGroup.and([
          if (filter.titleQuery.isNotNullOrBlank)
            FilterCondition.contains(
              property: 'title',
              value: filter.titleQuery!,
              caseSensitive: true,
            ),
          if (filter.creationDate != null)
            FilterCondition.equalTo(
              property: 'creationDate',
              value: filter.creationDate!,
            ),
        ]),
        sortBy: [
          SortProperty(
            property: filter.sort.name,
            sort: filter.asc ? Sort.asc : Sort.desc,
          )
        ],
      ).findAll();

  @override
  Future<AppTariff?> getTariff(int id) =>
      db.appTariffs.filter().idEqualTo(id).findFirst();

  @override
  Future<void> putTariff(AppTariff data) async {
    await db.writeTxn(() async {
      await db.appTariffs.put(data);
    });
    return;
  }

  @override
  Future<void> deleteTariff(int id) async {
    await db.writeTxn(() async {
      await db.appTariffs.delete(id);
    });
    return;
  }
}
