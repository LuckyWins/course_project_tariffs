// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_tariffs_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppTariffsFilterImpl _$$AppTariffsFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$AppTariffsFilterImpl(
      ownerId: (json['ownerId'] as num?)?.toInt(),
      titleQuery: json['titleQuery'] as String?,
      creationDate: json['creationDate'] == null
          ? null
          : DateTime.parse(json['creationDate'] as String),
      asc: json['asc'] as bool? ?? true,
      sort: $enumDecodeNullable(_$AppTariffsSortTypeEnumMap, json['sort']) ??
          AppTariffsSortType.creationDate,
    );

Map<String, dynamic> _$$AppTariffsFilterImplToJson(
        _$AppTariffsFilterImpl instance) =>
    <String, dynamic>{
      'ownerId': instance.ownerId,
      'titleQuery': instance.titleQuery,
      'creationDate': instance.creationDate?.toIso8601String(),
      'asc': instance.asc,
      'sort': _$AppTariffsSortTypeEnumMap[instance.sort]!,
    };

const _$AppTariffsSortTypeEnumMap = {
  AppTariffsSortType.creationDate: 'creationDate',
  AppTariffsSortType.price: 'price',
};
