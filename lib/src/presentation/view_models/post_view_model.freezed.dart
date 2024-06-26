// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostViewModel {
  int get userId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  List<CommentViewModel> get comments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostViewModelCopyWith<PostViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostViewModelCopyWith<$Res> {
  factory $PostViewModelCopyWith(
          PostViewModel value, $Res Function(PostViewModel) then) =
      _$PostViewModelCopyWithImpl<$Res, PostViewModel>;
  @useResult
  $Res call(
      {int userId,
      int id,
      String title,
      String body,
      List<CommentViewModel> comments});
}

/// @nodoc
class _$PostViewModelCopyWithImpl<$Res, $Val extends PostViewModel>
    implements $PostViewModelCopyWith<$Res> {
  _$PostViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? comments = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentViewModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostViewModelImplCopyWith<$Res>
    implements $PostViewModelCopyWith<$Res> {
  factory _$$PostViewModelImplCopyWith(
          _$PostViewModelImpl value, $Res Function(_$PostViewModelImpl) then) =
      __$$PostViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int userId,
      int id,
      String title,
      String body,
      List<CommentViewModel> comments});
}

/// @nodoc
class __$$PostViewModelImplCopyWithImpl<$Res>
    extends _$PostViewModelCopyWithImpl<$Res, _$PostViewModelImpl>
    implements _$$PostViewModelImplCopyWith<$Res> {
  __$$PostViewModelImplCopyWithImpl(
      _$PostViewModelImpl _value, $Res Function(_$PostViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? comments = null,
  }) {
    return _then(_$PostViewModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentViewModel>,
    ));
  }
}

/// @nodoc

class _$PostViewModelImpl implements _PostViewModel {
  const _$PostViewModelImpl(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body,
      final List<CommentViewModel> comments = const []})
      : _comments = comments;

  @override
  final int userId;
  @override
  final int id;
  @override
  final String title;
  @override
  final String body;
  final List<CommentViewModel> _comments;
  @override
  @JsonKey()
  List<CommentViewModel> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'PostViewModel(userId: $userId, id: $id, title: $title, body: $body, comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostViewModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, id, title, body,
      const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostViewModelImplCopyWith<_$PostViewModelImpl> get copyWith =>
      __$$PostViewModelImplCopyWithImpl<_$PostViewModelImpl>(this, _$identity);
}

abstract class _PostViewModel implements PostViewModel {
  const factory _PostViewModel(
      {required final int userId,
      required final int id,
      required final String title,
      required final String body,
      final List<CommentViewModel> comments}) = _$PostViewModelImpl;

  @override
  int get userId;
  @override
  int get id;
  @override
  String get title;
  @override
  String get body;
  @override
  List<CommentViewModel> get comments;
  @override
  @JsonKey(ignore: true)
  _$$PostViewModelImplCopyWith<_$PostViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
