// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_edit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppUser data) hasData,
    required TResult Function(AppUser data) updatedSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppUser data)? hasData,
    TResult? Function(AppUser data)? updatedSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppUser data)? hasData,
    TResult Function(AppUser data)? updatedSuccessful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_HasData value) hasData,
    required TResult Function(_UpdatedSuccessful value) updatedSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HasData value)? hasData,
    TResult? Function(_UpdatedSuccessful value)? updatedSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_HasData value)? hasData,
    TResult Function(_UpdatedSuccessful value)? updatedSuccessful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEditStateCopyWith<$Res> {
  factory $ProfileEditStateCopyWith(
          ProfileEditState value, $Res Function(ProfileEditState) then) =
      _$ProfileEditStateCopyWithImpl<$Res, ProfileEditState>;
}

/// @nodoc
class _$ProfileEditStateCopyWithImpl<$Res, $Val extends ProfileEditState>
    implements $ProfileEditStateCopyWith<$Res> {
  _$ProfileEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ProfileEditStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ProfileEditState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppUser data) hasData,
    required TResult Function(AppUser data) updatedSuccessful,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppUser data)? hasData,
    TResult? Function(AppUser data)? updatedSuccessful,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppUser data)? hasData,
    TResult Function(AppUser data)? updatedSuccessful,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_HasData value) hasData,
    required TResult Function(_UpdatedSuccessful value) updatedSuccessful,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HasData value)? hasData,
    TResult? Function(_UpdatedSuccessful value)? updatedSuccessful,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_HasData value)? hasData,
    TResult Function(_UpdatedSuccessful value)? updatedSuccessful,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProfileEditState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$HasDataImplCopyWith<$Res> {
  factory _$$HasDataImplCopyWith(
          _$HasDataImpl value, $Res Function(_$HasDataImpl) then) =
      __$$HasDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser data});
}

/// @nodoc
class __$$HasDataImplCopyWithImpl<$Res>
    extends _$ProfileEditStateCopyWithImpl<$Res, _$HasDataImpl>
    implements _$$HasDataImplCopyWith<$Res> {
  __$$HasDataImplCopyWithImpl(
      _$HasDataImpl _value, $Res Function(_$HasDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$HasDataImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc

class _$HasDataImpl implements _HasData {
  const _$HasDataImpl(this.data);

  @override
  final AppUser data;

  @override
  String toString() {
    return 'ProfileEditState.hasData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HasDataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HasDataImplCopyWith<_$HasDataImpl> get copyWith =>
      __$$HasDataImplCopyWithImpl<_$HasDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppUser data) hasData,
    required TResult Function(AppUser data) updatedSuccessful,
  }) {
    return hasData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppUser data)? hasData,
    TResult? Function(AppUser data)? updatedSuccessful,
  }) {
    return hasData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppUser data)? hasData,
    TResult Function(AppUser data)? updatedSuccessful,
    required TResult orElse(),
  }) {
    if (hasData != null) {
      return hasData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_HasData value) hasData,
    required TResult Function(_UpdatedSuccessful value) updatedSuccessful,
  }) {
    return hasData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HasData value)? hasData,
    TResult? Function(_UpdatedSuccessful value)? updatedSuccessful,
  }) {
    return hasData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_HasData value)? hasData,
    TResult Function(_UpdatedSuccessful value)? updatedSuccessful,
    required TResult orElse(),
  }) {
    if (hasData != null) {
      return hasData(this);
    }
    return orElse();
  }
}

abstract class _HasData implements ProfileEditState {
  const factory _HasData(final AppUser data) = _$HasDataImpl;

  AppUser get data;
  @JsonKey(ignore: true)
  _$$HasDataImplCopyWith<_$HasDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedSuccessfulImplCopyWith<$Res> {
  factory _$$UpdatedSuccessfulImplCopyWith(_$UpdatedSuccessfulImpl value,
          $Res Function(_$UpdatedSuccessfulImpl) then) =
      __$$UpdatedSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser data});
}

/// @nodoc
class __$$UpdatedSuccessfulImplCopyWithImpl<$Res>
    extends _$ProfileEditStateCopyWithImpl<$Res, _$UpdatedSuccessfulImpl>
    implements _$$UpdatedSuccessfulImplCopyWith<$Res> {
  __$$UpdatedSuccessfulImplCopyWithImpl(_$UpdatedSuccessfulImpl _value,
      $Res Function(_$UpdatedSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UpdatedSuccessfulImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc

class _$UpdatedSuccessfulImpl implements _UpdatedSuccessful {
  const _$UpdatedSuccessfulImpl(this.data);

  @override
  final AppUser data;

  @override
  String toString() {
    return 'ProfileEditState.updatedSuccessful(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedSuccessfulImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedSuccessfulImplCopyWith<_$UpdatedSuccessfulImpl> get copyWith =>
      __$$UpdatedSuccessfulImplCopyWithImpl<_$UpdatedSuccessfulImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppUser data) hasData,
    required TResult Function(AppUser data) updatedSuccessful,
  }) {
    return updatedSuccessful(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppUser data)? hasData,
    TResult? Function(AppUser data)? updatedSuccessful,
  }) {
    return updatedSuccessful?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppUser data)? hasData,
    TResult Function(AppUser data)? updatedSuccessful,
    required TResult orElse(),
  }) {
    if (updatedSuccessful != null) {
      return updatedSuccessful(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_HasData value) hasData,
    required TResult Function(_UpdatedSuccessful value) updatedSuccessful,
  }) {
    return updatedSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HasData value)? hasData,
    TResult? Function(_UpdatedSuccessful value)? updatedSuccessful,
  }) {
    return updatedSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_HasData value)? hasData,
    TResult Function(_UpdatedSuccessful value)? updatedSuccessful,
    required TResult orElse(),
  }) {
    if (updatedSuccessful != null) {
      return updatedSuccessful(this);
    }
    return orElse();
  }
}

abstract class _UpdatedSuccessful implements ProfileEditState {
  const factory _UpdatedSuccessful(final AppUser data) =
      _$UpdatedSuccessfulImpl;

  AppUser get data;
  @JsonKey(ignore: true)
  _$$UpdatedSuccessfulImplCopyWith<_$UpdatedSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
