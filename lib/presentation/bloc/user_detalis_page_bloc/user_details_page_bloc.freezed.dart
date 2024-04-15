// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_details_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserDetailsPageState {
  List<PostViewModel> get postViewModelList =>
      throw _privateConstructorUsedError;
  List<PhotoViewModel> get photoViewModelList =>
      throw _privateConstructorUsedError;
  List<AlbumViewModel> get albumViewModelList =>
      throw _privateConstructorUsedError;
  List<TodoViewModel> get todoViewModelList =>
      throw _privateConstructorUsedError;
  List<CommentViewModel> get commentViewModelList =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailsPageStateCopyWith<UserDetailsPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsPageStateCopyWith<$Res> {
  factory $UserDetailsPageStateCopyWith(UserDetailsPageState value,
          $Res Function(UserDetailsPageState) then) =
      _$UserDetailsPageStateCopyWithImpl<$Res, UserDetailsPageState>;
  @useResult
  $Res call(
      {List<PostViewModel> postViewModelList,
      List<PhotoViewModel> photoViewModelList,
      List<AlbumViewModel> albumViewModelList,
      List<TodoViewModel> todoViewModelList,
      List<CommentViewModel> commentViewModelList,
      bool isLoading});
}

/// @nodoc
class _$UserDetailsPageStateCopyWithImpl<$Res,
        $Val extends UserDetailsPageState>
    implements $UserDetailsPageStateCopyWith<$Res> {
  _$UserDetailsPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postViewModelList = null,
    Object? photoViewModelList = null,
    Object? albumViewModelList = null,
    Object? todoViewModelList = null,
    Object? commentViewModelList = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      postViewModelList: null == postViewModelList
          ? _value.postViewModelList
          : postViewModelList // ignore: cast_nullable_to_non_nullable
              as List<PostViewModel>,
      photoViewModelList: null == photoViewModelList
          ? _value.photoViewModelList
          : photoViewModelList // ignore: cast_nullable_to_non_nullable
              as List<PhotoViewModel>,
      albumViewModelList: null == albumViewModelList
          ? _value.albumViewModelList
          : albumViewModelList // ignore: cast_nullable_to_non_nullable
              as List<AlbumViewModel>,
      todoViewModelList: null == todoViewModelList
          ? _value.todoViewModelList
          : todoViewModelList // ignore: cast_nullable_to_non_nullable
              as List<TodoViewModel>,
      commentViewModelList: null == commentViewModelList
          ? _value.commentViewModelList
          : commentViewModelList // ignore: cast_nullable_to_non_nullable
              as List<CommentViewModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailsPageStateImplCopyWith<$Res>
    implements $UserDetailsPageStateCopyWith<$Res> {
  factory _$$UserDetailsPageStateImplCopyWith(_$UserDetailsPageStateImpl value,
          $Res Function(_$UserDetailsPageStateImpl) then) =
      __$$UserDetailsPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PostViewModel> postViewModelList,
      List<PhotoViewModel> photoViewModelList,
      List<AlbumViewModel> albumViewModelList,
      List<TodoViewModel> todoViewModelList,
      List<CommentViewModel> commentViewModelList,
      bool isLoading});
}

/// @nodoc
class __$$UserDetailsPageStateImplCopyWithImpl<$Res>
    extends _$UserDetailsPageStateCopyWithImpl<$Res, _$UserDetailsPageStateImpl>
    implements _$$UserDetailsPageStateImplCopyWith<$Res> {
  __$$UserDetailsPageStateImplCopyWithImpl(_$UserDetailsPageStateImpl _value,
      $Res Function(_$UserDetailsPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postViewModelList = null,
    Object? photoViewModelList = null,
    Object? albumViewModelList = null,
    Object? todoViewModelList = null,
    Object? commentViewModelList = null,
    Object? isLoading = null,
  }) {
    return _then(_$UserDetailsPageStateImpl(
      postViewModelList: null == postViewModelList
          ? _value._postViewModelList
          : postViewModelList // ignore: cast_nullable_to_non_nullable
              as List<PostViewModel>,
      photoViewModelList: null == photoViewModelList
          ? _value._photoViewModelList
          : photoViewModelList // ignore: cast_nullable_to_non_nullable
              as List<PhotoViewModel>,
      albumViewModelList: null == albumViewModelList
          ? _value._albumViewModelList
          : albumViewModelList // ignore: cast_nullable_to_non_nullable
              as List<AlbumViewModel>,
      todoViewModelList: null == todoViewModelList
          ? _value._todoViewModelList
          : todoViewModelList // ignore: cast_nullable_to_non_nullable
              as List<TodoViewModel>,
      commentViewModelList: null == commentViewModelList
          ? _value._commentViewModelList
          : commentViewModelList // ignore: cast_nullable_to_non_nullable
              as List<CommentViewModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UserDetailsPageStateImpl implements _UserDetailsPageState {
  const _$UserDetailsPageStateImpl(
      {final List<PostViewModel> postViewModelList = const [],
      final List<PhotoViewModel> photoViewModelList = const [],
      final List<AlbumViewModel> albumViewModelList = const [],
      final List<TodoViewModel> todoViewModelList = const [],
      final List<CommentViewModel> commentViewModelList = const [],
      this.isLoading = false})
      : _postViewModelList = postViewModelList,
        _photoViewModelList = photoViewModelList,
        _albumViewModelList = albumViewModelList,
        _todoViewModelList = todoViewModelList,
        _commentViewModelList = commentViewModelList;

  final List<PostViewModel> _postViewModelList;
  @override
  @JsonKey()
  List<PostViewModel> get postViewModelList {
    if (_postViewModelList is EqualUnmodifiableListView)
      return _postViewModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postViewModelList);
  }

  final List<PhotoViewModel> _photoViewModelList;
  @override
  @JsonKey()
  List<PhotoViewModel> get photoViewModelList {
    if (_photoViewModelList is EqualUnmodifiableListView)
      return _photoViewModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photoViewModelList);
  }

  final List<AlbumViewModel> _albumViewModelList;
  @override
  @JsonKey()
  List<AlbumViewModel> get albumViewModelList {
    if (_albumViewModelList is EqualUnmodifiableListView)
      return _albumViewModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albumViewModelList);
  }

  final List<TodoViewModel> _todoViewModelList;
  @override
  @JsonKey()
  List<TodoViewModel> get todoViewModelList {
    if (_todoViewModelList is EqualUnmodifiableListView)
      return _todoViewModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoViewModelList);
  }

  final List<CommentViewModel> _commentViewModelList;
  @override
  @JsonKey()
  List<CommentViewModel> get commentViewModelList {
    if (_commentViewModelList is EqualUnmodifiableListView)
      return _commentViewModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commentViewModelList);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'UserDetailsPageState(postViewModelList: $postViewModelList, photoViewModelList: $photoViewModelList, albumViewModelList: $albumViewModelList, todoViewModelList: $todoViewModelList, commentViewModelList: $commentViewModelList, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsPageStateImpl &&
            const DeepCollectionEquality()
                .equals(other._postViewModelList, _postViewModelList) &&
            const DeepCollectionEquality()
                .equals(other._photoViewModelList, _photoViewModelList) &&
            const DeepCollectionEquality()
                .equals(other._albumViewModelList, _albumViewModelList) &&
            const DeepCollectionEquality()
                .equals(other._todoViewModelList, _todoViewModelList) &&
            const DeepCollectionEquality()
                .equals(other._commentViewModelList, _commentViewModelList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_postViewModelList),
      const DeepCollectionEquality().hash(_photoViewModelList),
      const DeepCollectionEquality().hash(_albumViewModelList),
      const DeepCollectionEquality().hash(_todoViewModelList),
      const DeepCollectionEquality().hash(_commentViewModelList),
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailsPageStateImplCopyWith<_$UserDetailsPageStateImpl>
      get copyWith =>
          __$$UserDetailsPageStateImplCopyWithImpl<_$UserDetailsPageStateImpl>(
              this, _$identity);
}

abstract class _UserDetailsPageState implements UserDetailsPageState {
  const factory _UserDetailsPageState(
      {final List<PostViewModel> postViewModelList,
      final List<PhotoViewModel> photoViewModelList,
      final List<AlbumViewModel> albumViewModelList,
      final List<TodoViewModel> todoViewModelList,
      final List<CommentViewModel> commentViewModelList,
      final bool isLoading}) = _$UserDetailsPageStateImpl;

  @override
  List<PostViewModel> get postViewModelList;
  @override
  List<PhotoViewModel> get photoViewModelList;
  @override
  List<AlbumViewModel> get albumViewModelList;
  @override
  List<TodoViewModel> get todoViewModelList;
  @override
  List<CommentViewModel> get commentViewModelList;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailsPageStateImplCopyWith<_$UserDetailsPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
