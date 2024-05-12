// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_reservations_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppReservationsFilterImpl _$$AppReservationsFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$AppReservationsFilterImpl(
      tariffId: (json['tariffId'] as num?)?.toInt(),
      tariffOwnerId: (json['tariffOwnerId'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      creationDate: json['creationDate'] == null
          ? null
          : DateTime.parse(json['creationDate'] as String),
      hours: (json['hours'] as num?)?.toInt(),
      status:
          $enumDecodeNullable(_$AppReservationStatusEnumMap, json['status']),
      asc: json['asc'] as bool? ?? true,
      sort:
          $enumDecodeNullable(_$AppReservationsSortTypeEnumMap, json['sort']) ??
              AppReservationsSortType.creationDate,
    );

Map<String, dynamic> _$$AppReservationsFilterImplToJson(
        _$AppReservationsFilterImpl instance) =>
    <String, dynamic>{
      'tariffId': instance.tariffId,
      'tariffOwnerId': instance.tariffOwnerId,
      'userId': instance.userId,
      'creationDate': instance.creationDate?.toIso8601String(),
      'hours': instance.hours,
      'status': _$AppReservationStatusEnumMap[instance.status],
      'asc': instance.asc,
      'sort': _$AppReservationsSortTypeEnumMap[instance.sort]!,
    };

const _$AppReservationStatusEnumMap = {
  AppReservationStatus.active: 'active',
  AppReservationStatus.cancelled: 'cancelled',
};

const _$AppReservationsSortTypeEnumMap = {
  AppReservationsSortType.creationDate: 'creationDate',
  AppReservationsSortType.hours: 'hours',
};
