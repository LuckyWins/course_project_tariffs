// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_reservations_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppReservationsFilter {
  int? get tariffId => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  DateTime? get creationDate => throw _privateConstructorUsedError;
  int? get hours => throw _privateConstructorUsedError;
  bool get asc => throw _privateConstructorUsedError;
  AppReservationsSortType get sort => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppReservationsFilterCopyWith<AppReservationsFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppReservationsFilterCopyWith<$Res> {
  factory $AppReservationsFilterCopyWith(AppReservationsFilter value,
          $Res Function(AppReservationsFilter) then) =
      _$AppReservationsFilterCopyWithImpl<$Res, AppReservationsFilter>;
  @useResult
  $Res call(
      {int? tariffId,
      int? userId,
      DateTime? creationDate,
      int? hours,
      bool asc,
      AppReservationsSortType sort});
}

/// @nodoc
class _$AppReservationsFilterCopyWithImpl<$Res,
        $Val extends AppReservationsFilter>
    implements $AppReservationsFilterCopyWith<$Res> {
  _$AppReservationsFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tariffId = freezed,
    Object? userId = freezed,
    Object? creationDate = freezed,
    Object? hours = freezed,
    Object? asc = null,
    Object? sort = null,
  }) {
    return _then(_value.copyWith(
      tariffId: freezed == tariffId
          ? _value.tariffId
          : tariffId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hours: freezed == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int?,
      asc: null == asc
          ? _value.asc
          : asc // ignore: cast_nullable_to_non_nullable
              as bool,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as AppReservationsSortType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppReservationsFilterImplCopyWith<$Res>
    implements $AppReservationsFilterCopyWith<$Res> {
  factory _$$AppReservationsFilterImplCopyWith(
          _$AppReservationsFilterImpl value,
          $Res Function(_$AppReservationsFilterImpl) then) =
      __$$AppReservationsFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? tariffId,
      int? userId,
      DateTime? creationDate,
      int? hours,
      bool asc,
      AppReservationsSortType sort});
}

/// @nodoc
class __$$AppReservationsFilterImplCopyWithImpl<$Res>
    extends _$AppReservationsFilterCopyWithImpl<$Res,
        _$AppReservationsFilterImpl>
    implements _$$AppReservationsFilterImplCopyWith<$Res> {
  __$$AppReservationsFilterImplCopyWithImpl(_$AppReservationsFilterImpl _value,
      $Res Function(_$AppReservationsFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tariffId = freezed,
    Object? userId = freezed,
    Object? creationDate = freezed,
    Object? hours = freezed,
    Object? asc = null,
    Object? sort = null,
  }) {
    return _then(_$AppReservationsFilterImpl(
      tariffId: freezed == tariffId
          ? _value.tariffId
          : tariffId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hours: freezed == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int?,
      asc: null == asc
          ? _value.asc
          : asc // ignore: cast_nullable_to_non_nullable
              as bool,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as AppReservationsSortType,
    ));
  }
}

/// @nodoc

class _$AppReservationsFilterImpl implements _AppReservationsFilter {
  const _$AppReservationsFilterImpl(
      {this.tariffId,
      this.userId,
      this.creationDate,
      this.hours,
      this.asc = true,
      this.sort = AppReservationsSortType.creationDate});

  @override
  final int? tariffId;
  @override
  final int? userId;
  @override
  final DateTime? creationDate;
  @override
  final int? hours;
  @override
  @JsonKey()
  final bool asc;
  @override
  @JsonKey()
  final AppReservationsSortType sort;

  @override
  String toString() {
    return 'AppReservationsFilter(tariffId: $tariffId, userId: $userId, creationDate: $creationDate, hours: $hours, asc: $asc, sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppReservationsFilterImpl &&
            (identical(other.tariffId, tariffId) ||
                other.tariffId == tariffId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.asc, asc) || other.asc == asc) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, tariffId, userId, creationDate, hours, asc, sort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppReservationsFilterImplCopyWith<_$AppReservationsFilterImpl>
      get copyWith => __$$AppReservationsFilterImplCopyWithImpl<
          _$AppReservationsFilterImpl>(this, _$identity);
}

abstract class _AppReservationsFilter implements AppReservationsFilter {
  const factory _AppReservationsFilter(
      {final int? tariffId,
      final int? userId,
      final DateTime? creationDate,
      final int? hours,
      final bool asc,
      final AppReservationsSortType sort}) = _$AppReservationsFilterImpl;

  @override
  int? get tariffId;
  @override
  int? get userId;
  @override
  DateTime? get creationDate;
  @override
  int? get hours;
  @override
  bool get asc;
  @override
  AppReservationsSortType get sort;
  @override
  @JsonKey(ignore: true)
  _$$AppReservationsFilterImplCopyWith<_$AppReservationsFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}
