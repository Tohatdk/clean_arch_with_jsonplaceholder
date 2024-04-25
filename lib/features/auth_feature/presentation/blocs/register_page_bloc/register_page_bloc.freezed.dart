// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) editEmail,
    required TResult Function(String password) editPassword,
    required TResult Function(String confirmationPassword)
        editConfirmationPassword,
    required TResult Function() togglePassword,
    required TResult Function() toggleConfirmationPassword,
    required TResult Function() sendData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? editEmail,
    TResult? Function(String password)? editPassword,
    TResult? Function(String confirmationPassword)? editConfirmationPassword,
    TResult? Function()? togglePassword,
    TResult? Function()? toggleConfirmationPassword,
    TResult? Function()? sendData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? editEmail,
    TResult Function(String password)? editPassword,
    TResult Function(String confirmationPassword)? editConfirmationPassword,
    TResult Function()? togglePassword,
    TResult Function()? toggleConfirmationPassword,
    TResult Function()? sendData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditEmailEvent value) editEmail,
    required TResult Function(_EditPasswordEvent value) editPassword,
    required TResult Function(_EditConfimrationPasswordEvent value)
        editConfirmationPassword,
    required TResult Function(_TogglePasswordEvent value) togglePassword,
    required TResult Function(_ToggleConfirmationPasswordEvent value)
        toggleConfirmationPassword,
    required TResult Function(_SendDataEvent value) sendData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditEmailEvent value)? editEmail,
    TResult? Function(_EditPasswordEvent value)? editPassword,
    TResult? Function(_EditConfimrationPasswordEvent value)?
        editConfirmationPassword,
    TResult? Function(_TogglePasswordEvent value)? togglePassword,
    TResult? Function(_ToggleConfirmationPasswordEvent value)?
        toggleConfirmationPassword,
    TResult? Function(_SendDataEvent value)? sendData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditEmailEvent value)? editEmail,
    TResult Function(_EditPasswordEvent value)? editPassword,
    TResult Function(_EditConfimrationPasswordEvent value)?
        editConfirmationPassword,
    TResult Function(_TogglePasswordEvent value)? togglePassword,
    TResult Function(_ToggleConfirmationPasswordEvent value)?
        toggleConfirmationPassword,
    TResult Function(_SendDataEvent value)? sendData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterPageEventCopyWith<$Res> {
  factory $RegisterPageEventCopyWith(
          RegisterPageEvent value, $Res Function(RegisterPageEvent) then) =
      _$RegisterPageEventCopyWithImpl<$Res, RegisterPageEvent>;
}

/// @nodoc
class _$RegisterPageEventCopyWithImpl<$Res, $Val extends RegisterPageEvent>
    implements $RegisterPageEventCopyWith<$Res> {
  _$RegisterPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EditEmailEventImplCopyWith<$Res> {
  factory _$$EditEmailEventImplCopyWith(_$EditEmailEventImpl value,
          $Res Function(_$EditEmailEventImpl) then) =
      __$$EditEmailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EditEmailEventImplCopyWithImpl<$Res>
    extends _$RegisterPageEventCopyWithImpl<$Res, _$EditEmailEventImpl>
    implements _$$EditEmailEventImplCopyWith<$Res> {
  __$$EditEmailEventImplCopyWithImpl(
      _$EditEmailEventImpl _value, $Res Function(_$EditEmailEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EditEmailEventImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditEmailEventImpl implements _EditEmailEvent {
  const _$EditEmailEventImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterPageEvent.editEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditEmailEventImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditEmailEventImplCopyWith<_$EditEmailEventImpl> get copyWith =>
      __$$EditEmailEventImplCopyWithImpl<_$EditEmailEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) editEmail,
    required TResult Function(String password) editPassword,
    required TResult Function(String confirmationPassword)
        editConfirmationPassword,
    required TResult Function() togglePassword,
    required TResult Function() toggleConfirmationPassword,
    required TResult Function() sendData,
  }) {
    return editEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? editEmail,
    TResult? Function(String password)? editPassword,
    TResult? Function(String confirmationPassword)? editConfirmationPassword,
    TResult? Function()? togglePassword,
    TResult? Function()? toggleConfirmationPassword,
    TResult? Function()? sendData,
  }) {
    return editEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? editEmail,
    TResult Function(String password)? editPassword,
    TResult Function(String confirmationPassword)? editConfirmationPassword,
    TResult Function()? togglePassword,
    TResult Function()? toggleConfirmationPassword,
    TResult Function()? sendData,
    required TResult orElse(),
  }) {
    if (editEmail != null) {
      return editEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditEmailEvent value) editEmail,
    required TResult Function(_EditPasswordEvent value) editPassword,
    required TResult Function(_EditConfimrationPasswordEvent value)
        editConfirmationPassword,
    required TResult Function(_TogglePasswordEvent value) togglePassword,
    required TResult Function(_ToggleConfirmationPasswordEvent value)
        toggleConfirmationPassword,
    required TResult Function(_SendDataEvent value) sendData,
  }) {
    return editEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditEmailEvent value)? editEmail,
    TResult? Function(_EditPasswordEvent value)? editPassword,
    TResult? Function(_EditConfimrationPasswordEvent value)?
        editConfirmationPassword,
    TResult? Function(_TogglePasswordEvent value)? togglePassword,
    TResult? Function(_ToggleConfirmationPasswordEvent value)?
        toggleConfirmationPassword,
    TResult? Function(_SendDataEvent value)? sendData,
  }) {
    return editEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditEmailEvent value)? editEmail,
    TResult Function(_EditPasswordEvent value)? editPassword,
    TResult Function(_EditConfimrationPasswordEvent value)?
        editConfirmationPassword,
    TResult Function(_TogglePasswordEvent value)? togglePassword,
    TResult Function(_ToggleConfirmationPasswordEvent value)?
        toggleConfirmationPassword,
    TResult Function(_SendDataEvent value)? sendData,
    required TResult orElse(),
  }) {
    if (editEmail != null) {
      return editEmail(this);
    }
    return orElse();
  }
}

abstract class _EditEmailEvent implements RegisterPageEvent {
  const factory _EditEmailEvent(final String email) = _$EditEmailEventImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EditEmailEventImplCopyWith<_$EditEmailEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditPasswordEventImplCopyWith<$Res> {
  factory _$$EditPasswordEventImplCopyWith(_$EditPasswordEventImpl value,
          $Res Function(_$EditPasswordEventImpl) then) =
      __$$EditPasswordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$EditPasswordEventImplCopyWithImpl<$Res>
    extends _$RegisterPageEventCopyWithImpl<$Res, _$EditPasswordEventImpl>
    implements _$$EditPasswordEventImplCopyWith<$Res> {
  __$$EditPasswordEventImplCopyWithImpl(_$EditPasswordEventImpl _value,
      $Res Function(_$EditPasswordEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$EditPasswordEventImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditPasswordEventImpl implements _EditPasswordEvent {
  const _$EditPasswordEventImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterPageEvent.editPassword(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditPasswordEventImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditPasswordEventImplCopyWith<_$EditPasswordEventImpl> get copyWith =>
      __$$EditPasswordEventImplCopyWithImpl<_$EditPasswordEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) editEmail,
    required TResult Function(String password) editPassword,
    required TResult Function(String confirmationPassword)
        editConfirmationPassword,
    required TResult Function() togglePassword,
    required TResult Function() toggleConfirmationPassword,
    required TResult Function() sendData,
  }) {
    return editPassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? editEmail,
    TResult? Function(String password)? editPassword,
    TResult? Function(String confirmationPassword)? editConfirmationPassword,
    TResult? Function()? togglePassword,
    TResult? Function()? toggleConfirmationPassword,
    TResult? Function()? sendData,
  }) {
    return editPassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? editEmail,
    TResult Function(String password)? editPassword,
    TResult Function(String confirmationPassword)? editConfirmationPassword,
    TResult Function()? togglePassword,
    TResult Function()? toggleConfirmationPassword,
    TResult Function()? sendData,
    required TResult orElse(),
  }) {
    if (editPassword != null) {
      return editPassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditEmailEvent value) editEmail,
    required TResult Function(_EditPasswordEvent value) editPassword,
    required TResult Function(_EditConfimrationPasswordEvent value)
        editConfirmationPassword,
    required TResult Function(_TogglePasswordEvent value) togglePassword,
    required TResult Function(_ToggleConfirmationPasswordEvent value)
        toggleConfirmationPassword,
    required TResult Function(_SendDataEvent value) sendData,
  }) {
    return editPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditEmailEvent value)? editEmail,
    TResult? Function(_EditPasswordEvent value)? editPassword,
    TResult? Function(_EditConfimrationPasswordEvent value)?
        editConfirmationPassword,
    TResult? Function(_TogglePasswordEvent value)? togglePassword,
    TResult? Function(_ToggleConfirmationPasswordEvent value)?
        toggleConfirmationPassword,
    TResult? Function(_SendDataEvent value)? sendData,
  }) {
    return editPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditEmailEvent value)? editEmail,
    TResult Function(_EditPasswordEvent value)? editPassword,
    TResult Function(_EditConfimrationPasswordEvent value)?
        editConfirmationPassword,
    TResult Function(_TogglePasswordEvent value)? togglePassword,
    TResult Function(_ToggleConfirmationPasswordEvent value)?
        toggleConfirmationPassword,
    TResult Function(_SendDataEvent value)? sendData,
    required TResult orElse(),
  }) {
    if (editPassword != null) {
      return editPassword(this);
    }
    return orElse();
  }
}

abstract class _EditPasswordEvent implements RegisterPageEvent {
  const factory _EditPasswordEvent(final String password) =
      _$EditPasswordEventImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$EditPasswordEventImplCopyWith<_$EditPasswordEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditConfimrationPasswordEventImplCopyWith<$Res> {
  factory _$$EditConfimrationPasswordEventImplCopyWith(
          _$EditConfimrationPasswordEventImpl value,
          $Res Function(_$EditConfimrationPasswordEventImpl) then) =
      __$$EditConfimrationPasswordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmationPassword});
}

/// @nodoc
class __$$EditConfimrationPasswordEventImplCopyWithImpl<$Res>
    extends _$RegisterPageEventCopyWithImpl<$Res,
        _$EditConfimrationPasswordEventImpl>
    implements _$$EditConfimrationPasswordEventImplCopyWith<$Res> {
  __$$EditConfimrationPasswordEventImplCopyWithImpl(
      _$EditConfimrationPasswordEventImpl _value,
      $Res Function(_$EditConfimrationPasswordEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmationPassword = null,
  }) {
    return _then(_$EditConfimrationPasswordEventImpl(
      null == confirmationPassword
          ? _value.confirmationPassword
          : confirmationPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditConfimrationPasswordEventImpl
    implements _EditConfimrationPasswordEvent {
  const _$EditConfimrationPasswordEventImpl(this.confirmationPassword);

  @override
  final String confirmationPassword;

  @override
  String toString() {
    return 'RegisterPageEvent.editConfirmationPassword(confirmationPassword: $confirmationPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditConfimrationPasswordEventImpl &&
            (identical(other.confirmationPassword, confirmationPassword) ||
                other.confirmationPassword == confirmationPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmationPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditConfimrationPasswordEventImplCopyWith<
          _$EditConfimrationPasswordEventImpl>
      get copyWith => __$$EditConfimrationPasswordEventImplCopyWithImpl<
          _$EditConfimrationPasswordEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) editEmail,
    required TResult Function(String password) editPassword,
    required TResult Function(String confirmationPassword)
        editConfirmationPassword,
    required TResult Function() togglePassword,
    required TResult Function() toggleConfirmationPassword,
    required TResult Function() sendData,
  }) {
    return editConfirmationPassword(confirmationPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? editEmail,
    TResult? Function(String password)? editPassword,
    TResult? Function(String confirmationPassword)? editConfirmationPassword,
    TResult? Function()? togglePassword,
    TResult? Function()? toggleConfirmationPassword,
    TResult? Function()? sendData,
  }) {
    return editConfirmationPassword?.call(confirmationPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? editEmail,
    TResult Function(String password)? editPassword,
    TResult Function(String confirmationPassword)? editConfirmationPassword,
    TResult Function()? togglePassword,
    TResult Function()? toggleConfirmationPassword,
    TResult Function()? sendData,
    required TResult orElse(),
  }) {
    if (editConfirmationPassword != null) {
      return editConfirmationPassword(confirmationPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditEmailEvent value) editEmail,
    required TResult Function(_EditPasswordEvent value) editPassword,
    required TResult Function(_EditConfimrationPasswordEvent value)
        editConfirmationPassword,
    required TResult Function(_TogglePasswordEvent value) togglePassword,
    required TResult Function(_ToggleConfirmationPasswordEvent value)
        toggleConfirmationPassword,
    required TResult Function(_SendDataEvent value) sendData,
  }) {
    return editConfirmationPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditEmailEvent value)? editEmail,
    TResult? Function(_EditPasswordEvent value)? editPassword,
    TResult? Function(_EditConfimrationPasswordEvent value)?
        editConfirmationPassword,
    TResult? Function(_TogglePasswordEvent value)? togglePassword,
    TResult? Function(_ToggleConfirmationPasswordEvent value)?
        toggleConfirmationPassword,
    TResult? Function(_SendDataEvent value)? sendData,
  }) {
    return editConfirmationPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditEmailEvent value)? editEmail,
    TResult Function(_EditPasswordEvent value)? editPassword,
    TResult Function(_EditConfimrationPasswordEvent value)?
        editConfirmationPassword,
    TResult Function(_TogglePasswordEvent value)? togglePassword,
    TResult Function(_ToggleConfirmationPasswordEvent value)?
        toggleConfirmationPassword,
    TResult Function(_SendDataEvent value)? sendData,
    required TResult orElse(),
  }) {
    if (editConfirmationPassword != null) {
      return editConfirmationPassword(this);
    }
    return orElse();
  }
}

abstract class _EditConfimrationPasswordEvent implements RegisterPageEvent {
  const factory _EditConfimrationPasswordEvent(
      final String confirmationPassword) = _$EditConfimrationPasswordEventImpl;

  String get confirmationPassword;
  @JsonKey(ignore: true)
  _$$EditConfimrationPasswordEventImplCopyWith<
          _$EditConfimrationPasswordEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TogglePasswordEventImplCopyWith<$Res> {
  factory _$$TogglePasswordEventImplCopyWith(_$TogglePasswordEventImpl value,
          $Res Function(_$TogglePasswordEventImpl) then) =
      __$$TogglePasswordEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TogglePasswordEventImplCopyWithImpl<$Res>
    extends _$RegisterPageEventCopyWithImpl<$Res, _$TogglePasswordEventImpl>
    implements _$$TogglePasswordEventImplCopyWith<$Res> {
  __$$TogglePasswordEventImplCopyWithImpl(_$TogglePasswordEventImpl _value,
      $Res Function(_$TogglePasswordEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TogglePasswordEventImpl implements _TogglePasswordEvent {
  const _$TogglePasswordEventImpl();

  @override
  String toString() {
    return 'RegisterPageEvent.togglePassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TogglePasswordEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) editEmail,
    required TResult Function(String password) editPassword,
    required TResult Function(String confirmationPassword)
        editConfirmationPassword,
    required TResult Function() togglePassword,
    required TResult Function() toggleConfirmationPassword,
    required TResult Function() sendData,
  }) {
    return togglePassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? editEmail,
    TResult? Function(String password)? editPassword,
    TResult? Function(String confirmationPassword)? editConfirmationPassword,
    TResult? Function()? togglePassword,
    TResult? Function()? toggleConfirmationPassword,
    TResult? Function()? sendData,
  }) {
    return togglePassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? editEmail,
    TResult Function(String password)? editPassword,
    TResult Function(String confirmationPassword)? editConfirmationPassword,
    TResult Function()? togglePassword,
    TResult Function()? toggleConfirmationPassword,
    TResult Function()? sendData,
    required TResult orElse(),
  }) {
    if (togglePassword != null) {
      return togglePassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditEmailEvent value) editEmail,
    required TResult Function(_EditPasswordEvent value) editPassword,
    required TResult Function(_EditConfimrationPasswordEvent value)
        editConfirmationPassword,
    required TResult Function(_TogglePasswordEvent value) togglePassword,
    required TResult Function(_ToggleConfirmationPasswordEvent value)
        toggleConfirmationPassword,
    required TResult Function(_SendDataEvent value) sendData,
  }) {
    return togglePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditEmailEvent value)? editEmail,
    TResult? Function(_EditPasswordEvent value)? editPassword,
    TResult? Function(_EditConfimrationPasswordEvent value)?
        editConfirmationPassword,
    TResult? Function(_TogglePasswordEvent value)? togglePassword,
    TResult? Function(_ToggleConfirmationPasswordEvent value)?
        toggleConfirmationPassword,
    TResult? Function(_SendDataEvent value)? sendData,
  }) {
    return togglePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditEmailEvent value)? editEmail,
    TResult Function(_EditPasswordEvent value)? editPassword,
    TResult Function(_EditConfimrationPasswordEvent value)?
        editConfirmationPassword,
    TResult Function(_TogglePasswordEvent value)? togglePassword,
    TResult Function(_ToggleConfirmationPasswordEvent value)?
        toggleConfirmationPassword,
    TResult Function(_SendDataEvent value)? sendData,
    required TResult orElse(),
  }) {
    if (togglePassword != null) {
      return togglePassword(this);
    }
    return orElse();
  }
}

abstract class _TogglePasswordEvent implements RegisterPageEvent {
  const factory _TogglePasswordEvent() = _$TogglePasswordEventImpl;
}

/// @nodoc
abstract class _$$ToggleConfirmationPasswordEventImplCopyWith<$Res> {
  factory _$$ToggleConfirmationPasswordEventImplCopyWith(
          _$ToggleConfirmationPasswordEventImpl value,
          $Res Function(_$ToggleConfirmationPasswordEventImpl) then) =
      __$$ToggleConfirmationPasswordEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleConfirmationPasswordEventImplCopyWithImpl<$Res>
    extends _$RegisterPageEventCopyWithImpl<$Res,
        _$ToggleConfirmationPasswordEventImpl>
    implements _$$ToggleConfirmationPasswordEventImplCopyWith<$Res> {
  __$$ToggleConfirmationPasswordEventImplCopyWithImpl(
      _$ToggleConfirmationPasswordEventImpl _value,
      $Res Function(_$ToggleConfirmationPasswordEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleConfirmationPasswordEventImpl
    implements _ToggleConfirmationPasswordEvent {
  const _$ToggleConfirmationPasswordEventImpl();

  @override
  String toString() {
    return 'RegisterPageEvent.toggleConfirmationPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleConfirmationPasswordEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) editEmail,
    required TResult Function(String password) editPassword,
    required TResult Function(String confirmationPassword)
        editConfirmationPassword,
    required TResult Function() togglePassword,
    required TResult Function() toggleConfirmationPassword,
    required TResult Function() sendData,
  }) {
    return toggleConfirmationPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? editEmail,
    TResult? Function(String password)? editPassword,
    TResult? Function(String confirmationPassword)? editConfirmationPassword,
    TResult? Function()? togglePassword,
    TResult? Function()? toggleConfirmationPassword,
    TResult? Function()? sendData,
  }) {
    return toggleConfirmationPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? editEmail,
    TResult Function(String password)? editPassword,
    TResult Function(String confirmationPassword)? editConfirmationPassword,
    TResult Function()? togglePassword,
    TResult Function()? toggleConfirmationPassword,
    TResult Function()? sendData,
    required TResult orElse(),
  }) {
    if (toggleConfirmationPassword != null) {
      return toggleConfirmationPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditEmailEvent value) editEmail,
    required TResult Function(_EditPasswordEvent value) editPassword,
    required TResult Function(_EditConfimrationPasswordEvent value)
        editConfirmationPassword,
    required TResult Function(_TogglePasswordEvent value) togglePassword,
    required TResult Function(_ToggleConfirmationPasswordEvent value)
        toggleConfirmationPassword,
    required TResult Function(_SendDataEvent value) sendData,
  }) {
    return toggleConfirmationPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditEmailEvent value)? editEmail,
    TResult? Function(_EditPasswordEvent value)? editPassword,
    TResult? Function(_EditConfimrationPasswordEvent value)?
        editConfirmationPassword,
    TResult? Function(_TogglePasswordEvent value)? togglePassword,
    TResult? Function(_ToggleConfirmationPasswordEvent value)?
        toggleConfirmationPassword,
    TResult? Function(_SendDataEvent value)? sendData,
  }) {
    return toggleConfirmationPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditEmailEvent value)? editEmail,
    TResult Function(_EditPasswordEvent value)? editPassword,
    TResult Function(_EditConfimrationPasswordEvent value)?
        editConfirmationPassword,
    TResult Function(_TogglePasswordEvent value)? togglePassword,
    TResult Function(_ToggleConfirmationPasswordEvent value)?
        toggleConfirmationPassword,
    TResult Function(_SendDataEvent value)? sendData,
    required TResult orElse(),
  }) {
    if (toggleConfirmationPassword != null) {
      return toggleConfirmationPassword(this);
    }
    return orElse();
  }
}

abstract class _ToggleConfirmationPasswordEvent implements RegisterPageEvent {
  const factory _ToggleConfirmationPasswordEvent() =
      _$ToggleConfirmationPasswordEventImpl;
}

/// @nodoc
abstract class _$$SendDataEventImplCopyWith<$Res> {
  factory _$$SendDataEventImplCopyWith(
          _$SendDataEventImpl value, $Res Function(_$SendDataEventImpl) then) =
      __$$SendDataEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendDataEventImplCopyWithImpl<$Res>
    extends _$RegisterPageEventCopyWithImpl<$Res, _$SendDataEventImpl>
    implements _$$SendDataEventImplCopyWith<$Res> {
  __$$SendDataEventImplCopyWithImpl(
      _$SendDataEventImpl _value, $Res Function(_$SendDataEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendDataEventImpl implements _SendDataEvent {
  const _$SendDataEventImpl();

  @override
  String toString() {
    return 'RegisterPageEvent.sendData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendDataEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) editEmail,
    required TResult Function(String password) editPassword,
    required TResult Function(String confirmationPassword)
        editConfirmationPassword,
    required TResult Function() togglePassword,
    required TResult Function() toggleConfirmationPassword,
    required TResult Function() sendData,
  }) {
    return sendData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? editEmail,
    TResult? Function(String password)? editPassword,
    TResult? Function(String confirmationPassword)? editConfirmationPassword,
    TResult? Function()? togglePassword,
    TResult? Function()? toggleConfirmationPassword,
    TResult? Function()? sendData,
  }) {
    return sendData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? editEmail,
    TResult Function(String password)? editPassword,
    TResult Function(String confirmationPassword)? editConfirmationPassword,
    TResult Function()? togglePassword,
    TResult Function()? toggleConfirmationPassword,
    TResult Function()? sendData,
    required TResult orElse(),
  }) {
    if (sendData != null) {
      return sendData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditEmailEvent value) editEmail,
    required TResult Function(_EditPasswordEvent value) editPassword,
    required TResult Function(_EditConfimrationPasswordEvent value)
        editConfirmationPassword,
    required TResult Function(_TogglePasswordEvent value) togglePassword,
    required TResult Function(_ToggleConfirmationPasswordEvent value)
        toggleConfirmationPassword,
    required TResult Function(_SendDataEvent value) sendData,
  }) {
    return sendData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditEmailEvent value)? editEmail,
    TResult? Function(_EditPasswordEvent value)? editPassword,
    TResult? Function(_EditConfimrationPasswordEvent value)?
        editConfirmationPassword,
    TResult? Function(_TogglePasswordEvent value)? togglePassword,
    TResult? Function(_ToggleConfirmationPasswordEvent value)?
        toggleConfirmationPassword,
    TResult? Function(_SendDataEvent value)? sendData,
  }) {
    return sendData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditEmailEvent value)? editEmail,
    TResult Function(_EditPasswordEvent value)? editPassword,
    TResult Function(_EditConfimrationPasswordEvent value)?
        editConfirmationPassword,
    TResult Function(_TogglePasswordEvent value)? togglePassword,
    TResult Function(_ToggleConfirmationPasswordEvent value)?
        toggleConfirmationPassword,
    TResult Function(_SendDataEvent value)? sendData,
    required TResult orElse(),
  }) {
    if (sendData != null) {
      return sendData(this);
    }
    return orElse();
  }
}

abstract class _SendDataEvent implements RegisterPageEvent {
  const factory _SendDataEvent() = _$SendDataEventImpl;
}

/// @nodoc
mixin _$RegisterPageState {
  EmailTextFromViewModel get emailViewModel =>
      throw _privateConstructorUsedError;
  PasswordTextFromViewModel get passwordViewModel =>
      throw _privateConstructorUsedError;
  RepeatPasswordTextFromViewModel get repeatPasswordFromViewModel =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get failureMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterPageStateCopyWith<RegisterPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterPageStateCopyWith<$Res> {
  factory $RegisterPageStateCopyWith(
          RegisterPageState value, $Res Function(RegisterPageState) then) =
      _$RegisterPageStateCopyWithImpl<$Res, RegisterPageState>;
  @useResult
  $Res call(
      {EmailTextFromViewModel emailViewModel,
      PasswordTextFromViewModel passwordViewModel,
      RepeatPasswordTextFromViewModel repeatPasswordFromViewModel,
      bool isLoading,
      String failureMessage});

  $EmailTextFromViewModelCopyWith<$Res> get emailViewModel;
  $PasswordTextFromViewModelCopyWith<$Res> get passwordViewModel;
  $RepeatPasswordTextFromViewModelCopyWith<$Res>
      get repeatPasswordFromViewModel;
}

/// @nodoc
class _$RegisterPageStateCopyWithImpl<$Res, $Val extends RegisterPageState>
    implements $RegisterPageStateCopyWith<$Res> {
  _$RegisterPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailViewModel = null,
    Object? passwordViewModel = null,
    Object? repeatPasswordFromViewModel = null,
    Object? isLoading = null,
    Object? failureMessage = null,
  }) {
    return _then(_value.copyWith(
      emailViewModel: null == emailViewModel
          ? _value.emailViewModel
          : emailViewModel // ignore: cast_nullable_to_non_nullable
              as EmailTextFromViewModel,
      passwordViewModel: null == passwordViewModel
          ? _value.passwordViewModel
          : passwordViewModel // ignore: cast_nullable_to_non_nullable
              as PasswordTextFromViewModel,
      repeatPasswordFromViewModel: null == repeatPasswordFromViewModel
          ? _value.repeatPasswordFromViewModel
          : repeatPasswordFromViewModel // ignore: cast_nullable_to_non_nullable
              as RepeatPasswordTextFromViewModel,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessage: null == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmailTextFromViewModelCopyWith<$Res> get emailViewModel {
    return $EmailTextFromViewModelCopyWith<$Res>(_value.emailViewModel,
        (value) {
      return _then(_value.copyWith(emailViewModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PasswordTextFromViewModelCopyWith<$Res> get passwordViewModel {
    return $PasswordTextFromViewModelCopyWith<$Res>(_value.passwordViewModel,
        (value) {
      return _then(_value.copyWith(passwordViewModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RepeatPasswordTextFromViewModelCopyWith<$Res>
      get repeatPasswordFromViewModel {
    return $RepeatPasswordTextFromViewModelCopyWith<$Res>(
        _value.repeatPasswordFromViewModel, (value) {
      return _then(_value.copyWith(repeatPasswordFromViewModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterPageStateImplCopyWith<$Res>
    implements $RegisterPageStateCopyWith<$Res> {
  factory _$$RegisterPageStateImplCopyWith(_$RegisterPageStateImpl value,
          $Res Function(_$RegisterPageStateImpl) then) =
      __$$RegisterPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailTextFromViewModel emailViewModel,
      PasswordTextFromViewModel passwordViewModel,
      RepeatPasswordTextFromViewModel repeatPasswordFromViewModel,
      bool isLoading,
      String failureMessage});

  @override
  $EmailTextFromViewModelCopyWith<$Res> get emailViewModel;
  @override
  $PasswordTextFromViewModelCopyWith<$Res> get passwordViewModel;
  @override
  $RepeatPasswordTextFromViewModelCopyWith<$Res>
      get repeatPasswordFromViewModel;
}

/// @nodoc
class __$$RegisterPageStateImplCopyWithImpl<$Res>
    extends _$RegisterPageStateCopyWithImpl<$Res, _$RegisterPageStateImpl>
    implements _$$RegisterPageStateImplCopyWith<$Res> {
  __$$RegisterPageStateImplCopyWithImpl(_$RegisterPageStateImpl _value,
      $Res Function(_$RegisterPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailViewModel = null,
    Object? passwordViewModel = null,
    Object? repeatPasswordFromViewModel = null,
    Object? isLoading = null,
    Object? failureMessage = null,
  }) {
    return _then(_$RegisterPageStateImpl(
      emailViewModel: null == emailViewModel
          ? _value.emailViewModel
          : emailViewModel // ignore: cast_nullable_to_non_nullable
              as EmailTextFromViewModel,
      passwordViewModel: null == passwordViewModel
          ? _value.passwordViewModel
          : passwordViewModel // ignore: cast_nullable_to_non_nullable
              as PasswordTextFromViewModel,
      repeatPasswordFromViewModel: null == repeatPasswordFromViewModel
          ? _value.repeatPasswordFromViewModel
          : repeatPasswordFromViewModel // ignore: cast_nullable_to_non_nullable
              as RepeatPasswordTextFromViewModel,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessage: null == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterPageStateImpl implements _RegisterPageState {
  const _$RegisterPageStateImpl(
      {this.emailViewModel = const EmailTextFromViewModel(),
      this.passwordViewModel = const PasswordTextFromViewModel(),
      this.repeatPasswordFromViewModel =
          const RepeatPasswordTextFromViewModel(),
      this.isLoading = false,
      this.failureMessage = ''});

  @override
  @JsonKey()
  final EmailTextFromViewModel emailViewModel;
  @override
  @JsonKey()
  final PasswordTextFromViewModel passwordViewModel;
  @override
  @JsonKey()
  final RepeatPasswordTextFromViewModel repeatPasswordFromViewModel;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String failureMessage;

  @override
  String toString() {
    return 'RegisterPageState(emailViewModel: $emailViewModel, passwordViewModel: $passwordViewModel, repeatPasswordFromViewModel: $repeatPasswordFromViewModel, isLoading: $isLoading, failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterPageStateImpl &&
            (identical(other.emailViewModel, emailViewModel) ||
                other.emailViewModel == emailViewModel) &&
            (identical(other.passwordViewModel, passwordViewModel) ||
                other.passwordViewModel == passwordViewModel) &&
            (identical(other.repeatPasswordFromViewModel,
                    repeatPasswordFromViewModel) ||
                other.repeatPasswordFromViewModel ==
                    repeatPasswordFromViewModel) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      emailViewModel,
      passwordViewModel,
      repeatPasswordFromViewModel,
      isLoading,
      failureMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterPageStateImplCopyWith<_$RegisterPageStateImpl> get copyWith =>
      __$$RegisterPageStateImplCopyWithImpl<_$RegisterPageStateImpl>(
          this, _$identity);
}

abstract class _RegisterPageState implements RegisterPageState {
  const factory _RegisterPageState(
      {final EmailTextFromViewModel emailViewModel,
      final PasswordTextFromViewModel passwordViewModel,
      final RepeatPasswordTextFromViewModel repeatPasswordFromViewModel,
      final bool isLoading,
      final String failureMessage}) = _$RegisterPageStateImpl;

  @override
  EmailTextFromViewModel get emailViewModel;
  @override
  PasswordTextFromViewModel get passwordViewModel;
  @override
  RepeatPasswordTextFromViewModel get repeatPasswordFromViewModel;
  @override
  bool get isLoading;
  @override
  String get failureMessage;
  @override
  @JsonKey(ignore: true)
  _$$RegisterPageStateImplCopyWith<_$RegisterPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
