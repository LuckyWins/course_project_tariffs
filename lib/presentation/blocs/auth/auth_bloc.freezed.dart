// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkCredentials,
    required TResult Function(String username, String password) signIn,
    required TResult Function(String username, String token) signInFromToken,
    required TResult Function() logOut,
    required TResult Function(String username, String password) signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkCredentials,
    TResult? Function(String username, String password)? signIn,
    TResult? Function(String username, String token)? signInFromToken,
    TResult? Function()? logOut,
    TResult? Function(String username, String password)? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkCredentials,
    TResult Function(String username, String password)? signIn,
    TResult Function(String username, String token)? signInFromToken,
    TResult Function()? logOut,
    TResult Function(String username, String password)? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckCredentials value) checkCredentials,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignInFromToken value) signInFromToken,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_SignUp value) signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckCredentials value)? checkCredentials,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignInFromToken value)? signInFromToken,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_SignUp value)? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckCredentials value)? checkCredentials,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignInFromToken value)? signInFromToken,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_SignUp value)? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckCredentialsImplCopyWith<$Res> {
  factory _$$CheckCredentialsImplCopyWith(_$CheckCredentialsImpl value,
          $Res Function(_$CheckCredentialsImpl) then) =
      __$$CheckCredentialsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckCredentialsImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckCredentialsImpl>
    implements _$$CheckCredentialsImplCopyWith<$Res> {
  __$$CheckCredentialsImplCopyWithImpl(_$CheckCredentialsImpl _value,
      $Res Function(_$CheckCredentialsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckCredentialsImpl implements _CheckCredentials {
  const _$CheckCredentialsImpl();

  @override
  String toString() {
    return 'AuthEvent.checkCredentials()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckCredentialsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkCredentials,
    required TResult Function(String username, String password) signIn,
    required TResult Function(String username, String token) signInFromToken,
    required TResult Function() logOut,
    required TResult Function(String username, String password) signUp,
  }) {
    return checkCredentials();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkCredentials,
    TResult? Function(String username, String password)? signIn,
    TResult? Function(String username, String token)? signInFromToken,
    TResult? Function()? logOut,
    TResult? Function(String username, String password)? signUp,
  }) {
    return checkCredentials?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkCredentials,
    TResult Function(String username, String password)? signIn,
    TResult Function(String username, String token)? signInFromToken,
    TResult Function()? logOut,
    TResult Function(String username, String password)? signUp,
    required TResult orElse(),
  }) {
    if (checkCredentials != null) {
      return checkCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckCredentials value) checkCredentials,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignInFromToken value) signInFromToken,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_SignUp value) signUp,
  }) {
    return checkCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckCredentials value)? checkCredentials,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignInFromToken value)? signInFromToken,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_SignUp value)? signUp,
  }) {
    return checkCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckCredentials value)? checkCredentials,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignInFromToken value)? signInFromToken,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (checkCredentials != null) {
      return checkCredentials(this);
    }
    return orElse();
  }
}

abstract class _CheckCredentials implements AuthEvent {
  const factory _CheckCredentials() = _$CheckCredentialsImpl;
}

/// @nodoc
abstract class _$$SignInImplCopyWith<$Res> {
  factory _$$SignInImplCopyWith(
          _$SignInImpl value, $Res Function(_$SignInImpl) then) =
      __$$SignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$SignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInImpl>
    implements _$$SignInImplCopyWith<$Res> {
  __$$SignInImplCopyWithImpl(
      _$SignInImpl _value, $Res Function(_$SignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$SignInImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInImpl implements _SignIn {
  const _$SignInImpl({required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signIn(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      __$$SignInImplCopyWithImpl<_$SignInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkCredentials,
    required TResult Function(String username, String password) signIn,
    required TResult Function(String username, String token) signInFromToken,
    required TResult Function() logOut,
    required TResult Function(String username, String password) signUp,
  }) {
    return signIn(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkCredentials,
    TResult? Function(String username, String password)? signIn,
    TResult? Function(String username, String token)? signInFromToken,
    TResult? Function()? logOut,
    TResult? Function(String username, String password)? signUp,
  }) {
    return signIn?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkCredentials,
    TResult Function(String username, String password)? signIn,
    TResult Function(String username, String token)? signInFromToken,
    TResult Function()? logOut,
    TResult Function(String username, String password)? signUp,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckCredentials value) checkCredentials,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignInFromToken value) signInFromToken,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_SignUp value) signUp,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckCredentials value)? checkCredentials,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignInFromToken value)? signInFromToken,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_SignUp value)? signUp,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckCredentials value)? checkCredentials,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignInFromToken value)? signInFromToken,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn implements AuthEvent {
  const factory _SignIn(
      {required final String username,
      required final String password}) = _$SignInImpl;

  String get username;
  String get password;
  @JsonKey(ignore: true)
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInFromTokenImplCopyWith<$Res> {
  factory _$$SignInFromTokenImplCopyWith(_$SignInFromTokenImpl value,
          $Res Function(_$SignInFromTokenImpl) then) =
      __$$SignInFromTokenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String token});
}

/// @nodoc
class __$$SignInFromTokenImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInFromTokenImpl>
    implements _$$SignInFromTokenImplCopyWith<$Res> {
  __$$SignInFromTokenImplCopyWithImpl(
      _$SignInFromTokenImpl _value, $Res Function(_$SignInFromTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? token = null,
  }) {
    return _then(_$SignInFromTokenImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInFromTokenImpl implements _SignInFromToken {
  const _$SignInFromTokenImpl({required this.username, required this.token});

  @override
  final String username;
  @override
  final String token;

  @override
  String toString() {
    return 'AuthEvent.signInFromToken(username: $username, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInFromTokenImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInFromTokenImplCopyWith<_$SignInFromTokenImpl> get copyWith =>
      __$$SignInFromTokenImplCopyWithImpl<_$SignInFromTokenImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkCredentials,
    required TResult Function(String username, String password) signIn,
    required TResult Function(String username, String token) signInFromToken,
    required TResult Function() logOut,
    required TResult Function(String username, String password) signUp,
  }) {
    return signInFromToken(username, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkCredentials,
    TResult? Function(String username, String password)? signIn,
    TResult? Function(String username, String token)? signInFromToken,
    TResult? Function()? logOut,
    TResult? Function(String username, String password)? signUp,
  }) {
    return signInFromToken?.call(username, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkCredentials,
    TResult Function(String username, String password)? signIn,
    TResult Function(String username, String token)? signInFromToken,
    TResult Function()? logOut,
    TResult Function(String username, String password)? signUp,
    required TResult orElse(),
  }) {
    if (signInFromToken != null) {
      return signInFromToken(username, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckCredentials value) checkCredentials,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignInFromToken value) signInFromToken,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_SignUp value) signUp,
  }) {
    return signInFromToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckCredentials value)? checkCredentials,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignInFromToken value)? signInFromToken,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_SignUp value)? signUp,
  }) {
    return signInFromToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckCredentials value)? checkCredentials,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignInFromToken value)? signInFromToken,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (signInFromToken != null) {
      return signInFromToken(this);
    }
    return orElse();
  }
}

abstract class _SignInFromToken implements AuthEvent {
  const factory _SignInFromToken(
      {required final String username,
      required final String token}) = _$SignInFromTokenImpl;

  String get username;
  String get token;
  @JsonKey(ignore: true)
  _$$SignInFromTokenImplCopyWith<_$SignInFromTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<$Res> {
  factory _$$LogOutImplCopyWith(
          _$LogOutImpl value, $Res Function(_$LogOutImpl) then) =
      __$$LogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogOutImpl>
    implements _$$LogOutImplCopyWith<$Res> {
  __$$LogOutImplCopyWithImpl(
      _$LogOutImpl _value, $Res Function(_$LogOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutImpl implements _LogOut {
  const _$LogOutImpl();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkCredentials,
    required TResult Function(String username, String password) signIn,
    required TResult Function(String username, String token) signInFromToken,
    required TResult Function() logOut,
    required TResult Function(String username, String password) signUp,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkCredentials,
    TResult? Function(String username, String password)? signIn,
    TResult? Function(String username, String token)? signInFromToken,
    TResult? Function()? logOut,
    TResult? Function(String username, String password)? signUp,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkCredentials,
    TResult Function(String username, String password)? signIn,
    TResult Function(String username, String token)? signInFromToken,
    TResult Function()? logOut,
    TResult Function(String username, String password)? signUp,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckCredentials value) checkCredentials,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignInFromToken value) signInFromToken,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_SignUp value) signUp,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckCredentials value)? checkCredentials,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignInFromToken value)? signInFromToken,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_SignUp value)? signUp,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckCredentials value)? checkCredentials,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignInFromToken value)? signInFromToken,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut implements AuthEvent {
  const factory _LogOut() = _$LogOutImpl;
}

/// @nodoc
abstract class _$$SignUpImplCopyWith<$Res> {
  factory _$$SignUpImplCopyWith(
          _$SignUpImpl value, $Res Function(_$SignUpImpl) then) =
      __$$SignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$SignUpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpImpl>
    implements _$$SignUpImplCopyWith<$Res> {
  __$$SignUpImplCopyWithImpl(
      _$SignUpImpl _value, $Res Function(_$SignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$SignUpImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpImpl implements _SignUp {
  const _$SignUpImpl({required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signUp(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      __$$SignUpImplCopyWithImpl<_$SignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkCredentials,
    required TResult Function(String username, String password) signIn,
    required TResult Function(String username, String token) signInFromToken,
    required TResult Function() logOut,
    required TResult Function(String username, String password) signUp,
  }) {
    return signUp(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkCredentials,
    TResult? Function(String username, String password)? signIn,
    TResult? Function(String username, String token)? signInFromToken,
    TResult? Function()? logOut,
    TResult? Function(String username, String password)? signUp,
  }) {
    return signUp?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkCredentials,
    TResult Function(String username, String password)? signIn,
    TResult Function(String username, String token)? signInFromToken,
    TResult Function()? logOut,
    TResult Function(String username, String password)? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckCredentials value) checkCredentials,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignInFromToken value) signInFromToken,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_SignUp value) signUp,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckCredentials value)? checkCredentials,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignInFromToken value)? signInFromToken,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_SignUp value)? signUp,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckCredentials value)? checkCredentials,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignInFromToken value)? signInFromToken,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements AuthEvent {
  const factory _SignUp(
      {required final String username,
      required final String password}) = _$SignUpImpl;

  String get username;
  String get password;
  @JsonKey(ignore: true)
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object error) error,
    required TResult Function(int id, UserRole role) proceedSuccess,
    required TResult Function() logOutSuccess,
    required TResult Function() noAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object error)? error,
    TResult? Function(int id, UserRole role)? proceedSuccess,
    TResult? Function()? logOutSuccess,
    TResult? Function()? noAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object error)? error,
    TResult Function(int id, UserRole role)? proceedSuccess,
    TResult Function()? logOutSuccess,
    TResult Function()? noAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ProceedSuccess value) proceedSuccess,
    required TResult Function(_LogOutSuccess value) logOutSuccess,
    required TResult Function(_NoAuth value) noAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_ProceedSuccess value)? proceedSuccess,
    TResult? Function(_LogOutSuccess value)? logOutSuccess,
    TResult? Function(_NoAuth value)? noAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ProceedSuccess value)? proceedSuccess,
    TResult Function(_LogOutSuccess value)? logOutSuccess,
    TResult Function(_NoAuth value)? noAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object error) error,
    required TResult Function(int id, UserRole role) proceedSuccess,
    required TResult Function() logOutSuccess,
    required TResult Function() noAuth,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object error)? error,
    TResult? Function(int id, UserRole role)? proceedSuccess,
    TResult? Function()? logOutSuccess,
    TResult? Function()? noAuth,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object error)? error,
    TResult Function(int id, UserRole role)? proceedSuccess,
    TResult Function()? logOutSuccess,
    TResult Function()? noAuth,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ProceedSuccess value) proceedSuccess,
    required TResult Function(_LogOutSuccess value) logOutSuccess,
    required TResult Function(_NoAuth value) noAuth,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_ProceedSuccess value)? proceedSuccess,
    TResult? Function(_LogOutSuccess value)? logOutSuccess,
    TResult? Function(_NoAuth value)? noAuth,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ProceedSuccess value)? proceedSuccess,
    TResult Function(_LogOutSuccess value)? logOutSuccess,
    TResult Function(_NoAuth value)? noAuth,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'AuthState.loading()';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object error) error,
    required TResult Function(int id, UserRole role) proceedSuccess,
    required TResult Function() logOutSuccess,
    required TResult Function() noAuth,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object error)? error,
    TResult? Function(int id, UserRole role)? proceedSuccess,
    TResult? Function()? logOutSuccess,
    TResult? Function()? noAuth,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object error)? error,
    TResult Function(int id, UserRole role)? proceedSuccess,
    TResult Function()? logOutSuccess,
    TResult Function()? noAuth,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ProceedSuccess value) proceedSuccess,
    required TResult Function(_LogOutSuccess value) logOutSuccess,
    required TResult Function(_NoAuth value) noAuth,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_ProceedSuccess value)? proceedSuccess,
    TResult? Function(_LogOutSuccess value)? logOutSuccess,
    TResult? Function(_NoAuth value)? noAuth,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ProceedSuccess value)? proceedSuccess,
    TResult Function(_LogOutSuccess value)? logOutSuccess,
    TResult Function(_NoAuth value)? noAuth,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'AuthState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object error) error,
    required TResult Function(int id, UserRole role) proceedSuccess,
    required TResult Function() logOutSuccess,
    required TResult Function() noAuth,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object error)? error,
    TResult? Function(int id, UserRole role)? proceedSuccess,
    TResult? Function()? logOutSuccess,
    TResult? Function()? noAuth,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object error)? error,
    TResult Function(int id, UserRole role)? proceedSuccess,
    TResult Function()? logOutSuccess,
    TResult Function()? noAuth,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ProceedSuccess value) proceedSuccess,
    required TResult Function(_LogOutSuccess value) logOutSuccess,
    required TResult Function(_NoAuth value) noAuth,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_ProceedSuccess value)? proceedSuccess,
    TResult? Function(_LogOutSuccess value)? logOutSuccess,
    TResult? Function(_NoAuth value)? noAuth,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ProceedSuccess value)? proceedSuccess,
    TResult Function(_LogOutSuccess value)? logOutSuccess,
    TResult Function(_NoAuth value)? noAuth,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(final Object error) = _$ErrorImpl;

  Object get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProceedSuccessImplCopyWith<$Res> {
  factory _$$ProceedSuccessImplCopyWith(_$ProceedSuccessImpl value,
          $Res Function(_$ProceedSuccessImpl) then) =
      __$$ProceedSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, UserRole role});
}

/// @nodoc
class __$$ProceedSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ProceedSuccessImpl>
    implements _$$ProceedSuccessImplCopyWith<$Res> {
  __$$ProceedSuccessImplCopyWithImpl(
      _$ProceedSuccessImpl _value, $Res Function(_$ProceedSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? role = null,
  }) {
    return _then(_$ProceedSuccessImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
    ));
  }
}

/// @nodoc

class _$ProceedSuccessImpl implements _ProceedSuccess {
  const _$ProceedSuccessImpl({required this.id, required this.role});

  @override
  final int id;
  @override
  final UserRole role;

  @override
  String toString() {
    return 'AuthState.proceedSuccess(id: $id, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProceedSuccessImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProceedSuccessImplCopyWith<_$ProceedSuccessImpl> get copyWith =>
      __$$ProceedSuccessImplCopyWithImpl<_$ProceedSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object error) error,
    required TResult Function(int id, UserRole role) proceedSuccess,
    required TResult Function() logOutSuccess,
    required TResult Function() noAuth,
  }) {
    return proceedSuccess(id, role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object error)? error,
    TResult? Function(int id, UserRole role)? proceedSuccess,
    TResult? Function()? logOutSuccess,
    TResult? Function()? noAuth,
  }) {
    return proceedSuccess?.call(id, role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object error)? error,
    TResult Function(int id, UserRole role)? proceedSuccess,
    TResult Function()? logOutSuccess,
    TResult Function()? noAuth,
    required TResult orElse(),
  }) {
    if (proceedSuccess != null) {
      return proceedSuccess(id, role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ProceedSuccess value) proceedSuccess,
    required TResult Function(_LogOutSuccess value) logOutSuccess,
    required TResult Function(_NoAuth value) noAuth,
  }) {
    return proceedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_ProceedSuccess value)? proceedSuccess,
    TResult? Function(_LogOutSuccess value)? logOutSuccess,
    TResult? Function(_NoAuth value)? noAuth,
  }) {
    return proceedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ProceedSuccess value)? proceedSuccess,
    TResult Function(_LogOutSuccess value)? logOutSuccess,
    TResult Function(_NoAuth value)? noAuth,
    required TResult orElse(),
  }) {
    if (proceedSuccess != null) {
      return proceedSuccess(this);
    }
    return orElse();
  }
}

abstract class _ProceedSuccess implements AuthState {
  const factory _ProceedSuccess(
      {required final int id,
      required final UserRole role}) = _$ProceedSuccessImpl;

  int get id;
  UserRole get role;
  @JsonKey(ignore: true)
  _$$ProceedSuccessImplCopyWith<_$ProceedSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutSuccessImplCopyWith<$Res> {
  factory _$$LogOutSuccessImplCopyWith(
          _$LogOutSuccessImpl value, $Res Function(_$LogOutSuccessImpl) then) =
      __$$LogOutSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LogOutSuccessImpl>
    implements _$$LogOutSuccessImplCopyWith<$Res> {
  __$$LogOutSuccessImplCopyWithImpl(
      _$LogOutSuccessImpl _value, $Res Function(_$LogOutSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutSuccessImpl implements _LogOutSuccess {
  const _$LogOutSuccessImpl();

  @override
  String toString() {
    return 'AuthState.logOutSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object error) error,
    required TResult Function(int id, UserRole role) proceedSuccess,
    required TResult Function() logOutSuccess,
    required TResult Function() noAuth,
  }) {
    return logOutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object error)? error,
    TResult? Function(int id, UserRole role)? proceedSuccess,
    TResult? Function()? logOutSuccess,
    TResult? Function()? noAuth,
  }) {
    return logOutSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object error)? error,
    TResult Function(int id, UserRole role)? proceedSuccess,
    TResult Function()? logOutSuccess,
    TResult Function()? noAuth,
    required TResult orElse(),
  }) {
    if (logOutSuccess != null) {
      return logOutSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ProceedSuccess value) proceedSuccess,
    required TResult Function(_LogOutSuccess value) logOutSuccess,
    required TResult Function(_NoAuth value) noAuth,
  }) {
    return logOutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_ProceedSuccess value)? proceedSuccess,
    TResult? Function(_LogOutSuccess value)? logOutSuccess,
    TResult? Function(_NoAuth value)? noAuth,
  }) {
    return logOutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ProceedSuccess value)? proceedSuccess,
    TResult Function(_LogOutSuccess value)? logOutSuccess,
    TResult Function(_NoAuth value)? noAuth,
    required TResult orElse(),
  }) {
    if (logOutSuccess != null) {
      return logOutSuccess(this);
    }
    return orElse();
  }
}

abstract class _LogOutSuccess implements AuthState {
  const factory _LogOutSuccess() = _$LogOutSuccessImpl;
}

/// @nodoc
abstract class _$$NoAuthImplCopyWith<$Res> {
  factory _$$NoAuthImplCopyWith(
          _$NoAuthImpl value, $Res Function(_$NoAuthImpl) then) =
      __$$NoAuthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoAuthImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$NoAuthImpl>
    implements _$$NoAuthImplCopyWith<$Res> {
  __$$NoAuthImplCopyWithImpl(
      _$NoAuthImpl _value, $Res Function(_$NoAuthImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoAuthImpl implements _NoAuth {
  const _$NoAuthImpl();

  @override
  String toString() {
    return 'AuthState.noAuth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoAuthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object error) error,
    required TResult Function(int id, UserRole role) proceedSuccess,
    required TResult Function() logOutSuccess,
    required TResult Function() noAuth,
  }) {
    return noAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object error)? error,
    TResult? Function(int id, UserRole role)? proceedSuccess,
    TResult? Function()? logOutSuccess,
    TResult? Function()? noAuth,
  }) {
    return noAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object error)? error,
    TResult Function(int id, UserRole role)? proceedSuccess,
    TResult Function()? logOutSuccess,
    TResult Function()? noAuth,
    required TResult orElse(),
  }) {
    if (noAuth != null) {
      return noAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ProceedSuccess value) proceedSuccess,
    required TResult Function(_LogOutSuccess value) logOutSuccess,
    required TResult Function(_NoAuth value) noAuth,
  }) {
    return noAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_ProceedSuccess value)? proceedSuccess,
    TResult? Function(_LogOutSuccess value)? logOutSuccess,
    TResult? Function(_NoAuth value)? noAuth,
  }) {
    return noAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ProceedSuccess value)? proceedSuccess,
    TResult Function(_LogOutSuccess value)? logOutSuccess,
    TResult Function(_NoAuth value)? noAuth,
    required TResult orElse(),
  }) {
    if (noAuth != null) {
      return noAuth(this);
    }
    return orElse();
  }
}

abstract class _NoAuth implements AuthState {
  const factory _NoAuth() = _$NoAuthImpl;
}
