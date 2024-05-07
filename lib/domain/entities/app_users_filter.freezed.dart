// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_users_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppUsersFilter {
  String? get usernameQuery => throw _privateConstructorUsedError;
  DateTime? get registrationDate => throw _privateConstructorUsedError;
  bool get asc => throw _privateConstructorUsedError;
  AppUsersSortType get sort => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppUsersFilterCopyWith<AppUsersFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUsersFilterCopyWith<$Res> {
  factory $AppUsersFilterCopyWith(
          AppUsersFilter value, $Res Function(AppUsersFilter) then) =
      _$AppUsersFilterCopyWithImpl<$Res, AppUsersFilter>;
  @useResult
  $Res call(
      {String? usernameQuery,
      DateTime? registrationDate,
      bool asc,
      AppUsersSortType sort});
}

/// @nodoc
class _$AppUsersFilterCopyWithImpl<$Res, $Val extends AppUsersFilter>
    implements $AppUsersFilterCopyWith<$Res> {
  _$AppUsersFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usernameQuery = freezed,
    Object? registrationDate = freezed,
    Object? asc = null,
    Object? sort = null,
  }) {
    return _then(_value.copyWith(
      usernameQuery: freezed == usernameQuery
          ? _value.usernameQuery
          : usernameQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationDate: freezed == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      asc: null == asc
          ? _value.asc
          : asc // ignore: cast_nullable_to_non_nullable
              as bool,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as AppUsersSortType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppUsersFilterImplCopyWith<$Res>
    implements $AppUsersFilterCopyWith<$Res> {
  factory _$$AppUsersFilterImplCopyWith(_$AppUsersFilterImpl value,
          $Res Function(_$AppUsersFilterImpl) then) =
      __$$AppUsersFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? usernameQuery,
      DateTime? registrationDate,
      bool asc,
      AppUsersSortType sort});
}

/// @nodoc
class __$$AppUsersFilterImplCopyWithImpl<$Res>
    extends _$AppUsersFilterCopyWithImpl<$Res, _$AppUsersFilterImpl>
    implements _$$AppUsersFilterImplCopyWith<$Res> {
  __$$AppUsersFilterImplCopyWithImpl(
      _$AppUsersFilterImpl _value, $Res Function(_$AppUsersFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usernameQuery = freezed,
    Object? registrationDate = freezed,
    Object? asc = null,
    Object? sort = null,
  }) {
    return _then(_$AppUsersFilterImpl(
      usernameQuery: freezed == usernameQuery
          ? _value.usernameQuery
          : usernameQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationDate: freezed == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      asc: null == asc
          ? _value.asc
          : asc // ignore: cast_nullable_to_non_nullable
              as bool,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as AppUsersSortType,
    ));
  }
}

/// @nodoc

class _$AppUsersFilterImpl implements _AppUsersFilter {
  const _$AppUsersFilterImpl(
      {this.usernameQuery,
      this.registrationDate,
      this.asc = true,
      this.sort = AppUsersSortType.registrationDate});

  @override
  final String? usernameQuery;
  @override
  final DateTime? registrationDate;
  @override
  @JsonKey()
  final bool asc;
  @override
  @JsonKey()
  final AppUsersSortType sort;

  @override
  String toString() {
    return 'AppUsersFilter(usernameQuery: $usernameQuery, registrationDate: $registrationDate, asc: $asc, sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUsersFilterImpl &&
            (identical(other.usernameQuery, usernameQuery) ||
                other.usernameQuery == usernameQuery) &&
            (identical(other.registrationDate, registrationDate) ||
                other.registrationDate == registrationDate) &&
            (identical(other.asc, asc) || other.asc == asc) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, usernameQuery, registrationDate, asc, sort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUsersFilterImplCopyWith<_$AppUsersFilterImpl> get copyWith =>
      __$$AppUsersFilterImplCopyWithImpl<_$AppUsersFilterImpl>(
          this, _$identity);
}

abstract class _AppUsersFilter implements AppUsersFilter {
  const factory _AppUsersFilter(
      {final String? usernameQuery,
      final DateTime? registrationDate,
      final bool asc,
      final AppUsersSortType sort}) = _$AppUsersFilterImpl;

  @override
  String? get usernameQuery;
  @override
  DateTime? get registrationDate;
  @override
  bool get asc;
  @override
  AppUsersSortType get sort;
  @override
  @JsonKey(ignore: true)
  _$$AppUsersFilterImplCopyWith<_$AppUsersFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
