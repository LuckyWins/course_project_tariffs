import 'package:course_project/domain/domain.dart';
import 'package:isar/isar.dart';

class ReservationsRepositoryImpl extends ReservationsRepository {
  final Isar db;

  ReservationsRepositoryImpl({
    required this.db,
  });

  @override
  Future<List<AppReservation>> getReservationsList() =>
      db.appReservations.where().findAll();

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
