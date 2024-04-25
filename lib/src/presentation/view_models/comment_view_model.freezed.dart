// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommentViewModel {
  int get postId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentViewModelCopyWith<CommentViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentViewModelCopyWith<$Res> {
  factory $CommentViewModelCopyWith(
          CommentViewModel value, $Res Function(CommentViewModel) then) =
      _$CommentViewModelCopyWithImpl<$Res, CommentViewModel>;
  @useResult
  $Res call({int postId, int id, String name, String email, String body});
}

/// @nodoc
class _$CommentViewModelCopyWithImpl<$Res, $Val extends CommentViewModel>
    implements $CommentViewModelCopyWith<$Res> {
  _$CommentViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentViewModelImplCopyWith<$Res>
    implements $CommentViewModelCopyWith<$Res> {
  factory _$$CommentViewModelImplCopyWith(_$CommentViewModelImpl value,
          $Res Function(_$CommentViewModelImpl) then) =
      __$$CommentViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int postId, int id, String name, String email, String body});
}

/// @nodoc
class __$$CommentViewModelImplCopyWithImpl<$Res>
    extends _$CommentViewModelCopyWithImpl<$Res, _$CommentViewModelImpl>
    implements _$$CommentViewModelImplCopyWith<$Res> {
  __$$CommentViewModelImplCopyWithImpl(_$CommentViewModelImpl _value,
      $Res Function(_$CommentViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? body = null,
  }) {
    return _then(_$CommentViewModelImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommentViewModelImpl implements _CommentViewModel {
  const _$CommentViewModelImpl(
      {required this.postId,
      required this.id,
      required this.name,
      required this.email,
      required this.body});

  @override
  final int postId;
  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String body;

  @override
  String toString() {
    return 'CommentViewModel(postId: $postId, id: $id, name: $name, email: $email, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentViewModelImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId, id, name, email, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentViewModelImplCopyWith<_$CommentViewModelImpl> get copyWith =>
      __$$CommentViewModelImplCopyWithImpl<_$CommentViewModelImpl>(
          this, _$identity);
}

abstract class _CommentViewModel implements CommentViewModel {
  const factory _CommentViewModel(
      {required final int postId,
      required final int id,
      required final String name,
      required final String email,
      required final String body}) = _$CommentViewModelImpl;

  @override
  int get postId;
  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$CommentViewModelImplCopyWith<_$CommentViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}