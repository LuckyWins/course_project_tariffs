import 'package:course_project/domain/domain.dart';

abstract class ReservationsRepository {
  Future<List<AppReservation>> getReservationsList();

  Future<AppReservation?> getReservation(int id);

  /// create or update
  Future<void> putReservation(AppReservation data);

  Future<void> deleteReservation(int id);
}
