import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'app_reservation.freezed.dart';
part 'app_reservation.g.dart';

@collection
class AppReservation {
  Id id = Isar.autoIncrement;

  late int tariffId;

  /// used for easy search
  late int tariffOwnerId;

  late int userId;

  DateTime creationDate = DateTime.now();

  late DateTime startDate;

  late int hours;

  @Enumerated(EnumType.name)
  AppReservationStatus status = AppReservationStatus.active;
}

enum AppReservationStatus {
  active,
  cancelled,
}

@freezed
class AppReservationEntity with _$AppReservationEntity {
  const factory AppReservationEntity({
    required int id,
    required int tariffId,
    required int tariffOwnerId,
    required int userId,
    required DateTime creationDate,
    required DateTime startDate,
    required int hours,
    required AppReservationStatus status,
  }) = _AppReservationEntity;

  factory AppReservationEntity.empty({
    required int tariffId,
    required int tariffOwnerId,
    required int userId,
  }) {
    final now = DateTime.now();
    return AppReservationEntity(
      id: -1,
      tariffId: tariffId,
      tariffOwnerId: tariffOwnerId,
      userId: userId,
      creationDate: DateTime.now(),
      startDate: DateTime(now.year, now.month, now.day, now.hour),
      hours: 0,
      status: AppReservationStatus.active,
    );
  }

  factory AppReservationEntity.fromJson(Map<String, dynamic> json) =>
      _$AppReservationEntityFromJson(json);
}

extension AppReservationMapperExtension on AppReservation {
  AppReservationEntity get entity => AppReservationEntity(
        id: id,
        tariffId: tariffId,
        tariffOwnerId: tariffOwnerId,
        userId: userId,
        creationDate: creationDate,
        startDate: startDate,
        hours: hours,
        status: status,
      );
}

extension AppReservationEntityMapperExtension on AppReservationEntity {
  AppReservation get dto => AppReservation()
    ..id = id == -1 ? Isar.autoIncrement : id
    ..tariffId = tariffId
    ..tariffOwnerId = tariffOwnerId
    ..userId = userId
    ..creationDate = creationDate
    ..startDate = startDate
    ..hours = hours
    ..status = status;
}
