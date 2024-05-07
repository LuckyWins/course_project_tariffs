import 'package:course_project/domain/domain.dart';
import 'package:isar/isar.dart';

class ReservationsRepositoryImpl extends ReservationsRepository {
  final Isar db;

  ReservationsRepositoryImpl({
    required this.db,
  });

  @override
  Future<List<AppReservation>> getReservationsList(
    AppReservationsFilter filter,
  ) =>
      db.appReservations.buildQuery<AppReservation>(
        filter: FilterGroup.and([
          if (filter.tariffId != null)
            FilterCondition.equalTo(
              property: 'tariffId',
              value: filter.tariffId,
            ),
          if (filter.userId != null)
            FilterCondition.equalTo(
              property: 'userId',
              value: filter.userId,
            ),
          if (filter.creationDate != null)
            FilterCondition.equalTo(
              property: 'creationDate',
              value: filter.creationDate,
            ),
          if (filter.hours != null)
            FilterCondition.equalTo(
              property: 'hours',
              value: filter.hours,
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
  Future<AppReservation?> getReservation(int id) =>
      db.appReservations.filter().idEqualTo(id).findFirst();

  @override
  Future<void> putReservation(AppReservation data) async {
    await db.writeTxn(() async {
      await db.appReservations.put(data);
    });
    return;
  }

  @override
  Future<void> deleteReservation(int id) async {
    await db.writeTxn(() async {
      await db.appReservations.delete(id);
    });
    return;
  }
}
