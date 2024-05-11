// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_tariffs_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppTariffsFilter _$AppTariffsFilterFromJson(Map<String, dynamic> json) {
  return _AppTariffsFilter.fromJson(json);
}

/// @nodoc
mixin _$AppTariffsFilter {
  int get ownerId => throw _privateConstructorUsedError;
  String? get titleQuery => throw _privateConstructorUsedError;
  DateTime? get creationDate => throw _privateConstructorUsedError;
  bool get asc => throw _privateConstructorUsedError;
  AppTariffsSortType get sort => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppTariffsFilterCopyWith<AppTariffsFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppTariffsFilterCopyWith<$Res> {
  factory $AppTariffsFilterCopyWith(
          AppTariffsFilter value, $Res Function(AppTariffsFilter) then) =
      _$AppTariffsFilterCopyWithImpl<$Res, AppTariffsFilter>;
  @useResult
  $Res call(
      {int ownerId,
      String? titleQuery,
      DateTime? creationDate,
      bool asc,
      AppTariffsSortType sort});
}

/// @nodoc
class _$AppTariffsFilterCopyWithImpl<$Res, $Val extends AppTariffsFilter>
    implements $AppTariffsFilterCopyWith<$Res> {
  _$AppTariffsFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerId = null,
    Object? titleQuery = freezed,
    Object? creationDate = freezed,
    Object? asc = null,
    Object? sort = null,
  }) {
    return _then(_value.copyWith(
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      titleQuery: freezed == titleQuery
          ? _value.titleQuery
          : titleQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      asc: null == asc
          ? _value.asc
          : asc // ignore: cast_nullable_to_non_nullable
              as bool,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as AppTariffsSortType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppTariffsFilterImplCopyWith<$Res>
    implements $AppTariffsFilterCopyWith<$Res> {
  factory _$$AppTariffsFilterImplCopyWith(_$AppTariffsFilterImpl value,
          $Res Function(_$AppTariffsFilterImpl) then) =
      __$$AppTariffsFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int ownerId,
      String? titleQuery,
      DateTime? creationDate,
      bool asc,
      AppTariffsSortType sort});
}

/// @nodoc
class __$$AppTariffsFilterImplCopyWithImpl<$Res>
    extends _$AppTariffsFilterCopyWithImpl<$Res, _$AppTariffsFilterImpl>
    implements _$$AppTariffsFilterImplCopyWith<$Res> {
  __$$AppTariffsFilterImplCopyWithImpl(_$AppTariffsFilterImpl _value,
      $Res Function(_$AppTariffsFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerId = null,
    Object? titleQuery = freezed,
    Object? creationDate = freezed,
    Object? asc = null,
    Object? sort = null,
  }) {
    return _then(_$AppTariffsFilterImpl(
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      titleQuery: freezed == titleQuery
          ? _value.titleQuery
          : titleQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      asc: null == asc
          ? _value.asc
          : asc // ignore: cast_nullable_to_non_nullable
              as bool,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as AppTariffsSortType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppTariffsFilterImpl extends _AppTariffsFilter {
  const _$AppTariffsFilterImpl(
      {required this.ownerId,
      this.titleQuery,
      this.creationDate,
      this.asc = true,
      this.sort = AppTariffsSortType.creationDate})
      : super._();

  factory _$AppTariffsFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppTariffsFilterImplFromJson(json);

  @override
  final int ownerId;
  @override
  final String? titleQuery;
  @override
  final DateTime? creationDate;
  @override
  @JsonKey()
  final bool asc;
  @override
  @JsonKey()
  final AppTariffsSortType sort;

  @override
  String toString() {
    return 'AppTariffsFilter(ownerId: $ownerId, titleQuery: $titleQuery, creationDate: $creationDate, asc: $asc, sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppTariffsFilterImpl &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.titleQuery, titleQuery) ||
                other.titleQuery == titleQuery) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.asc, asc) || other.asc == asc) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ownerId, titleQuery, creationDate, asc, sort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppTariffsFilterImplCopyWith<_$AppTariffsFilterImpl> get copyWith =>
      __$$AppTariffsFilterImplCopyWithImpl<_$AppTariffsFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppTariffsFilterImplToJson(
      this,
    );
  }
}

abstract class _AppTariffsFilter extends AppTariffsFilter {
  const factory _AppTariffsFilter(
      {required final int ownerId,
      final String? titleQuery,
      final DateTime? creationDate,
      final bool asc,
      final AppTariffsSortType sort}) = _$AppTariffsFilterImpl;
  const _AppTariffsFilter._() : super._();

  factory _AppTariffsFilter.fromJson(Map<String, dynamic> json) =
      _$AppTariffsFilterImpl.fromJson;

  @override
  int get ownerId;
  @override
  String? get titleQuery;
  @override
  DateTime? get creationDate;
  @override
  bool get asc;
  @override
  AppTariffsSortType get sort;
  @override
  @JsonKey(ignore: true)
  _$$AppTariffsFilterImplCopyWith<_$AppTariffsFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
