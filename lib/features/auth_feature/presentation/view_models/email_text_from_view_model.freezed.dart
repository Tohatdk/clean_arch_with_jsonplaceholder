// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_text_from_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmailTextFromViewModel {
  String get value => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailTextFromViewModelCopyWith<EmailTextFromViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailTextFromViewModelCopyWith<$Res> {
  factory $EmailTextFromViewModelCopyWith(EmailTextFromViewModel value,
          $Res Function(EmailTextFromViewModel) then) =
      _$EmailTextFromViewModelCopyWithImpl<$Res, EmailTextFromViewModel>;
  @useResult
  $Res call({String value, bool isValid, String errorMessage});
}

/// @nodoc
class _$EmailTextFromViewModelCopyWithImpl<$Res,
        $Val extends EmailTextFromViewModel>
    implements $EmailTextFromViewModelCopyWith<$Res> {
  _$EmailTextFromViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? isValid = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailTextFromViewModelImplCopyWith<$Res>
    implements $EmailTextFromViewModelCopyWith<$Res> {
  factory _$$EmailTextFromViewModelImplCopyWith(
          _$EmailTextFromViewModelImpl value,
          $Res Function(_$EmailTextFromViewModelImpl) then) =
      __$$EmailTextFromViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, bool isValid, String errorMessage});
}

/// @nodoc
class __$$EmailTextFromViewModelImplCopyWithImpl<$Res>
    extends _$EmailTextFromViewModelCopyWithImpl<$Res,
        _$EmailTextFromViewModelImpl>
    implements _$$EmailTextFromViewModelImplCopyWith<$Res> {
  __$$EmailTextFromViewModelImplCopyWithImpl(
      _$EmailTextFromViewModelImpl _value,
      $Res Function(_$EmailTextFromViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? isValid = null,
    Object? errorMessage = null,
  }) {
    return _then(_$EmailTextFromViewModelImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailTextFromViewModelImpl implements _EmailTextFromViewModel {
  const _$EmailTextFromViewModelImpl(
      {this.value = '', this.isValid = true, this.errorMessage = ''});

  @override
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'EmailTextFromViewModel(value: $value, isValid: $isValid, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailTextFromViewModelImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, isValid, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailTextFromViewModelImplCopyWith<_$EmailTextFromViewModelImpl>
      get copyWith => __$$EmailTextFromViewModelImplCopyWithImpl<
          _$EmailTextFromViewModelImpl>(this, _$identity);
}

abstract class _EmailTextFromViewModel implements EmailTextFromViewModel {
  const factory _EmailTextFromViewModel(
      {final String value,
      final bool isValid,
      final String errorMessage}) = _$EmailTextFromViewModelImpl;

  @override
  String get value;
  @override
  bool get isValid;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$EmailTextFromViewModelImplCopyWith<_$EmailTextFromViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
