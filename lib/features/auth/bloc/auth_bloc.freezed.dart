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
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firstName, String lastName, String password)
        signupEvent,
    required TResult Function(String username, String password) loginEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName, String lastName, String password)?
        signupEvent,
    TResult? Function(String username, String password)? loginEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String password)?
        signupEvent,
    TResult Function(String username, String password)? loginEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupEvent value) signupEvent,
    required TResult Function(LoginEvent value) loginEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupEvent value)? signupEvent,
    TResult? Function(LoginEvent value)? loginEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupEvent value)? signupEvent,
    TResult Function(LoginEvent value)? loginEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthEventCopyWith<AuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupEventImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$SignupEventImplCopyWith(
          _$SignupEventImpl value, $Res Function(_$SignupEventImpl) then) =
      __$$SignupEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firstName, String lastName, String password});
}

/// @nodoc
class __$$SignupEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignupEventImpl>
    implements _$$SignupEventImplCopyWith<$Res> {
  __$$SignupEventImplCopyWithImpl(
      _$SignupEventImpl _value, $Res Function(_$SignupEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? password = null,
  }) {
    return _then(_$SignupEventImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignupEventImpl implements SignupEvent {
  const _$SignupEventImpl(
      {required this.firstName,
      required this.lastName,
      required this.password});

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signupEvent(firstName: $firstName, lastName: $lastName, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupEventImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupEventImplCopyWith<_$SignupEventImpl> get copyWith =>
      __$$SignupEventImplCopyWithImpl<_$SignupEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firstName, String lastName, String password)
        signupEvent,
    required TResult Function(String username, String password) loginEvent,
  }) {
    return signupEvent(firstName, lastName, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName, String lastName, String password)?
        signupEvent,
    TResult? Function(String username, String password)? loginEvent,
  }) {
    return signupEvent?.call(firstName, lastName, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String password)?
        signupEvent,
    TResult Function(String username, String password)? loginEvent,
    required TResult orElse(),
  }) {
    if (signupEvent != null) {
      return signupEvent(firstName, lastName, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupEvent value) signupEvent,
    required TResult Function(LoginEvent value) loginEvent,
  }) {
    return signupEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupEvent value)? signupEvent,
    TResult? Function(LoginEvent value)? loginEvent,
  }) {
    return signupEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupEvent value)? signupEvent,
    TResult Function(LoginEvent value)? loginEvent,
    required TResult orElse(),
  }) {
    if (signupEvent != null) {
      return signupEvent(this);
    }
    return orElse();
  }
}

abstract class SignupEvent implements AuthEvent {
  const factory SignupEvent(
      {required final String firstName,
      required final String lastName,
      required final String password}) = _$SignupEventImpl;

  String get firstName;
  String get lastName;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignupEventImplCopyWith<_$SignupEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginEventImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$LoginEventImplCopyWith(
          _$LoginEventImpl value, $Res Function(_$LoginEventImpl) then) =
      __$$LoginEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$LoginEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginEventImpl>
    implements _$$LoginEventImplCopyWith<$Res> {
  __$$LoginEventImplCopyWithImpl(
      _$LoginEventImpl _value, $Res Function(_$LoginEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$LoginEventImpl(
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

class _$LoginEventImpl implements LoginEvent {
  const _$LoginEventImpl({required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginEvent(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventImpl &&
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
  _$$LoginEventImplCopyWith<_$LoginEventImpl> get copyWith =>
      __$$LoginEventImplCopyWithImpl<_$LoginEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firstName, String lastName, String password)
        signupEvent,
    required TResult Function(String username, String password) loginEvent,
  }) {
    return loginEvent(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName, String lastName, String password)?
        signupEvent,
    TResult? Function(String username, String password)? loginEvent,
  }) {
    return loginEvent?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String password)?
        signupEvent,
    TResult Function(String username, String password)? loginEvent,
    required TResult orElse(),
  }) {
    if (loginEvent != null) {
      return loginEvent(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupEvent value) signupEvent,
    required TResult Function(LoginEvent value) loginEvent,
  }) {
    return loginEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupEvent value)? signupEvent,
    TResult? Function(LoginEvent value)? loginEvent,
  }) {
    return loginEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupEvent value)? signupEvent,
    TResult Function(LoginEvent value)? loginEvent,
    required TResult orElse(),
  }) {
    if (loginEvent != null) {
      return loginEvent(this);
    }
    return orElse();
  }
}

abstract class LoginEvent implements AuthEvent {
  const factory LoginEvent(
      {required final String username,
      required final String password}) = _$LoginEventImpl;

  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginEventImplCopyWith<_$LoginEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signupLoading,
    required TResult Function(ApiResponse<dynamic> response) signupError,
    required TResult Function(ApiResponse<AuthResponse> response) signupSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signupLoading,
    TResult? Function(ApiResponse<dynamic> response)? signupError,
    TResult? Function(ApiResponse<AuthResponse> response)? signupSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signupLoading,
    TResult Function(ApiResponse<dynamic> response)? signupError,
    TResult Function(ApiResponse<AuthResponse> response)? signupSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(SignupLoading value) signupLoading,
    required TResult Function(SignupError value) signupError,
    required TResult Function(SignupSuccess value) signupSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(SignupLoading value)? signupLoading,
    TResult? Function(SignupError value)? signupError,
    TResult? Function(SignupSuccess value)? signupSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(SignupLoading value)? signupLoading,
    TResult Function(SignupError value)? signupError,
    TResult Function(SignupSuccess value)? signupSuccess,
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
abstract class _$$AuthInitialImplCopyWith<$Res> {
  factory _$$AuthInitialImplCopyWith(
          _$AuthInitialImpl value, $Res Function(_$AuthInitialImpl) then) =
      __$$AuthInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthInitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthInitialImpl>
    implements _$$AuthInitialImplCopyWith<$Res> {
  __$$AuthInitialImplCopyWithImpl(
      _$AuthInitialImpl _value, $Res Function(_$AuthInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthInitialImpl implements AuthInitial {
  const _$AuthInitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signupLoading,
    required TResult Function(ApiResponse<dynamic> response) signupError,
    required TResult Function(ApiResponse<AuthResponse> response) signupSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signupLoading,
    TResult? Function(ApiResponse<dynamic> response)? signupError,
    TResult? Function(ApiResponse<AuthResponse> response)? signupSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signupLoading,
    TResult Function(ApiResponse<dynamic> response)? signupError,
    TResult Function(ApiResponse<AuthResponse> response)? signupSuccess,
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
    required TResult Function(AuthInitial value) initial,
    required TResult Function(SignupLoading value) signupLoading,
    required TResult Function(SignupError value) signupError,
    required TResult Function(SignupSuccess value) signupSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(SignupLoading value)? signupLoading,
    TResult? Function(SignupError value)? signupError,
    TResult? Function(SignupSuccess value)? signupSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(SignupLoading value)? signupLoading,
    TResult Function(SignupError value)? signupError,
    TResult Function(SignupSuccess value)? signupSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthInitial implements AuthState {
  const factory AuthInitial() = _$AuthInitialImpl;
}

/// @nodoc
abstract class _$$SignupLoadingImplCopyWith<$Res> {
  factory _$$SignupLoadingImplCopyWith(
          _$SignupLoadingImpl value, $Res Function(_$SignupLoadingImpl) then) =
      __$$SignupLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignupLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignupLoadingImpl>
    implements _$$SignupLoadingImplCopyWith<$Res> {
  __$$SignupLoadingImplCopyWithImpl(
      _$SignupLoadingImpl _value, $Res Function(_$SignupLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignupLoadingImpl implements SignupLoading {
  const _$SignupLoadingImpl();

  @override
  String toString() {
    return 'AuthState.signupLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignupLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signupLoading,
    required TResult Function(ApiResponse<dynamic> response) signupError,
    required TResult Function(ApiResponse<AuthResponse> response) signupSuccess,
  }) {
    return signupLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signupLoading,
    TResult? Function(ApiResponse<dynamic> response)? signupError,
    TResult? Function(ApiResponse<AuthResponse> response)? signupSuccess,
  }) {
    return signupLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signupLoading,
    TResult Function(ApiResponse<dynamic> response)? signupError,
    TResult Function(ApiResponse<AuthResponse> response)? signupSuccess,
    required TResult orElse(),
  }) {
    if (signupLoading != null) {
      return signupLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(SignupLoading value) signupLoading,
    required TResult Function(SignupError value) signupError,
    required TResult Function(SignupSuccess value) signupSuccess,
  }) {
    return signupLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(SignupLoading value)? signupLoading,
    TResult? Function(SignupError value)? signupError,
    TResult? Function(SignupSuccess value)? signupSuccess,
  }) {
    return signupLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(SignupLoading value)? signupLoading,
    TResult Function(SignupError value)? signupError,
    TResult Function(SignupSuccess value)? signupSuccess,
    required TResult orElse(),
  }) {
    if (signupLoading != null) {
      return signupLoading(this);
    }
    return orElse();
  }
}

abstract class SignupLoading implements AuthState {
  const factory SignupLoading() = _$SignupLoadingImpl;
}

/// @nodoc
abstract class _$$SignupErrorImplCopyWith<$Res> {
  factory _$$SignupErrorImplCopyWith(
          _$SignupErrorImpl value, $Res Function(_$SignupErrorImpl) then) =
      __$$SignupErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiResponse<dynamic> response});
}

/// @nodoc
class __$$SignupErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignupErrorImpl>
    implements _$$SignupErrorImplCopyWith<$Res> {
  __$$SignupErrorImplCopyWithImpl(
      _$SignupErrorImpl _value, $Res Function(_$SignupErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$SignupErrorImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ApiResponse<dynamic>,
    ));
  }
}

/// @nodoc

class _$SignupErrorImpl implements SignupError {
  const _$SignupErrorImpl({required this.response});

  @override
  final ApiResponse<dynamic> response;

  @override
  String toString() {
    return 'AuthState.signupError(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupErrorImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupErrorImplCopyWith<_$SignupErrorImpl> get copyWith =>
      __$$SignupErrorImplCopyWithImpl<_$SignupErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signupLoading,
    required TResult Function(ApiResponse<dynamic> response) signupError,
    required TResult Function(ApiResponse<AuthResponse> response) signupSuccess,
  }) {
    return signupError(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signupLoading,
    TResult? Function(ApiResponse<dynamic> response)? signupError,
    TResult? Function(ApiResponse<AuthResponse> response)? signupSuccess,
  }) {
    return signupError?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signupLoading,
    TResult Function(ApiResponse<dynamic> response)? signupError,
    TResult Function(ApiResponse<AuthResponse> response)? signupSuccess,
    required TResult orElse(),
  }) {
    if (signupError != null) {
      return signupError(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(SignupLoading value) signupLoading,
    required TResult Function(SignupError value) signupError,
    required TResult Function(SignupSuccess value) signupSuccess,
  }) {
    return signupError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(SignupLoading value)? signupLoading,
    TResult? Function(SignupError value)? signupError,
    TResult? Function(SignupSuccess value)? signupSuccess,
  }) {
    return signupError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(SignupLoading value)? signupLoading,
    TResult Function(SignupError value)? signupError,
    TResult Function(SignupSuccess value)? signupSuccess,
    required TResult orElse(),
  }) {
    if (signupError != null) {
      return signupError(this);
    }
    return orElse();
  }
}

abstract class SignupError implements AuthState {
  const factory SignupError({required final ApiResponse<dynamic> response}) =
      _$SignupErrorImpl;

  ApiResponse<dynamic> get response;
  @JsonKey(ignore: true)
  _$$SignupErrorImplCopyWith<_$SignupErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignupSuccessImplCopyWith<$Res> {
  factory _$$SignupSuccessImplCopyWith(
          _$SignupSuccessImpl value, $Res Function(_$SignupSuccessImpl) then) =
      __$$SignupSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiResponse<AuthResponse> response});
}

/// @nodoc
class __$$SignupSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignupSuccessImpl>
    implements _$$SignupSuccessImplCopyWith<$Res> {
  __$$SignupSuccessImplCopyWithImpl(
      _$SignupSuccessImpl _value, $Res Function(_$SignupSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$SignupSuccessImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ApiResponse<AuthResponse>,
    ));
  }
}

/// @nodoc

class _$SignupSuccessImpl implements SignupSuccess {
  const _$SignupSuccessImpl({required this.response});

  @override
  final ApiResponse<AuthResponse> response;

  @override
  String toString() {
    return 'AuthState.signupSuccess(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupSuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupSuccessImplCopyWith<_$SignupSuccessImpl> get copyWith =>
      __$$SignupSuccessImplCopyWithImpl<_$SignupSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signupLoading,
    required TResult Function(ApiResponse<dynamic> response) signupError,
    required TResult Function(ApiResponse<AuthResponse> response) signupSuccess,
  }) {
    return signupSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signupLoading,
    TResult? Function(ApiResponse<dynamic> response)? signupError,
    TResult? Function(ApiResponse<AuthResponse> response)? signupSuccess,
  }) {
    return signupSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signupLoading,
    TResult Function(ApiResponse<dynamic> response)? signupError,
    TResult Function(ApiResponse<AuthResponse> response)? signupSuccess,
    required TResult orElse(),
  }) {
    if (signupSuccess != null) {
      return signupSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(SignupLoading value) signupLoading,
    required TResult Function(SignupError value) signupError,
    required TResult Function(SignupSuccess value) signupSuccess,
  }) {
    return signupSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(SignupLoading value)? signupLoading,
    TResult? Function(SignupError value)? signupError,
    TResult? Function(SignupSuccess value)? signupSuccess,
  }) {
    return signupSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(SignupLoading value)? signupLoading,
    TResult Function(SignupError value)? signupError,
    TResult Function(SignupSuccess value)? signupSuccess,
    required TResult orElse(),
  }) {
    if (signupSuccess != null) {
      return signupSuccess(this);
    }
    return orElse();
  }
}

abstract class SignupSuccess implements AuthState {
  const factory SignupSuccess(
          {required final ApiResponse<AuthResponse> response}) =
      _$SignupSuccessImpl;

  ApiResponse<AuthResponse> get response;
  @JsonKey(ignore: true)
  _$$SignupSuccessImplCopyWith<_$SignupSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
