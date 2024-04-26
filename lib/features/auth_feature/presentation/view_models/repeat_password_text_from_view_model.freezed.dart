// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repeat_password_text_from_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RepeatPasswordTextFromViewModel {
  String get value => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  bool get isObscured => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepeatPasswordTextFromViewModelCopyWith<RepeatPasswordTextFromViewModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepeatPasswordTextFromViewModelCopyWith<$Res> {
  factory $RepeatPasswordTextFromViewModelCopyWith(
          RepeatPasswordTextFromViewModel value,
          $Res Function(RepeatPasswordTextFromViewModel) then) =
      _$RepeatPasswordTextFromViewModelCopyWithImpl<$Res,
          RepeatPasswordTextFromViewModel>;
  @useResult
  $Res call(
      {String value, String? errorMessage, bool isValid, bool isObscured});
}

/// @nodoc
class _$RepeatPasswordTextFromViewModelCopyWithImpl<$Res,
        $Val extends RepeatPasswordTextFromViewModel>
    implements $RepeatPasswordTextFromViewModelCopyWith<$Res> {
  _$RepeatPasswordTextFromViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? errorMessage = freezed,
    Object? isValid = null,
    Object? isObscured = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isObscured: null == isObscured
          ? _value.isObscured
          : isObscured // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepeatPasswordTextFromViewModelImplCopyWith<$Res>
    implements $RepeatPasswordTextFromViewModelCopyWith<$Res> {
  factory _$$RepeatPasswordTextFromViewModelImplCopyWith(
          _$RepeatPasswordTextFromViewModelImpl value,
          $Res Function(_$RepeatPasswordTextFromViewModelImpl) then) =
      __$$RepeatPasswordTextFromViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String value, String? errorMessage, bool isValid, bool isObscured});
}

/// @nodoc
class __$$RepeatPasswordTextFromViewModelImplCopyWithImpl<$Res>
    extends _$RepeatPasswordTextFromViewModelCopyWithImpl<$Res,
        _$RepeatPasswordTextFromViewModelImpl>
    implements _$$RepeatPasswordTextFromViewModelImplCopyWith<$Res> {
  __$$RepeatPasswordTextFromViewModelImplCopyWithImpl(
      _$RepeatPasswordTextFromViewModelImpl _value,
      $Res Function(_$RepeatPasswordTextFromViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? errorMessage = freezed,
    Object? isValid = null,
    Object? isObscured = null,
  }) {
    return _then(_$RepeatPasswordTextFromViewModelImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isObscured: null == isObscured
          ? _value.isObscured
          : isObscured // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RepeatPasswordTextFromViewModelImpl
    implements _RepeatPasswordTextFromViewModel {
  const _$RepeatPasswordTextFromViewModelImpl(
      {this.value = '',
      this.errorMessage,
      this.isValid = true,
      this.isObscured = true});

  @override
  @JsonKey()
  final String value;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final bool isObscured;

  @override
  String toString() {
    return 'RepeatPasswordTextFromViewModel(value: $value, errorMessage: $errorMessage, isValid: $isValid, isObscured: $isObscured)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepeatPasswordTextFromViewModelImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.isObscured, isObscured) ||
                other.isObscured == isObscured));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, value, errorMessage, isValid, isObscured);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepeatPasswordTextFromViewModelImplCopyWith<
          _$RepeatPasswordTextFromViewModelImpl>
      get copyWith => __$$RepeatPasswordTextFromViewModelImplCopyWithImpl<
          _$RepeatPasswordTextFromViewModelImpl>(this, _$identity);
}

abstract class _RepeatPasswordTextFromViewModel
    implements RepeatPasswordTextFromViewModel {
  const factory _RepeatPasswordTextFromViewModel(
      {final String value,
      final String? errorMessage,
      final bool isValid,
      final bool isObscured}) = _$RepeatPasswordTextFromViewModelImpl;

  @override
  String get value;
  @override
  String? get errorMessage;
  @override
  bool get isValid;
  @override
  bool get isObscured;
  @override
  @JsonKey(ignore: true)
  _$$RepeatPasswordTextFromViewModelImplCopyWith<
          _$RepeatPasswordTextFromViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
