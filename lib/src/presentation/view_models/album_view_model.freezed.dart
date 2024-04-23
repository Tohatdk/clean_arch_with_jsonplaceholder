// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'album_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AlbumViewModel {
  int get userId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<PhotoViewModel> get photos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumViewModelCopyWith<AlbumViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumViewModelCopyWith<$Res> {
  factory $AlbumViewModelCopyWith(
          AlbumViewModel value, $Res Function(AlbumViewModel) then) =
      _$AlbumViewModelCopyWithImpl<$Res, AlbumViewModel>;
  @useResult
  $Res call({int userId, int id, String title, List<PhotoViewModel> photos});
}

/// @nodoc
class _$AlbumViewModelCopyWithImpl<$Res, $Val extends AlbumViewModel>
    implements $AlbumViewModelCopyWith<$Res> {
  _$AlbumViewModelCopyWithImpl(this._value, this._then);

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
    Object? photos = null,
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
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoViewModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlbumViewModelImplCopyWith<$Res>
    implements $AlbumViewModelCopyWith<$Res> {
  factory _$$AlbumViewModelImplCopyWith(_$AlbumViewModelImpl value,
          $Res Function(_$AlbumViewModelImpl) then) =
      __$$AlbumViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, int id, String title, List<PhotoViewModel> photos});
}

/// @nodoc
class __$$AlbumViewModelImplCopyWithImpl<$Res>
    extends _$AlbumViewModelCopyWithImpl<$Res, _$AlbumViewModelImpl>
    implements _$$AlbumViewModelImplCopyWith<$Res> {
  __$$AlbumViewModelImplCopyWithImpl(
      _$AlbumViewModelImpl _value, $Res Function(_$AlbumViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? title = null,
    Object? photos = null,
  }) {
    return _then(_$AlbumViewModelImpl(
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
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoViewModel>,
    ));
  }
}

/// @nodoc

class _$AlbumViewModelImpl implements _AlbumViewModel {
  const _$AlbumViewModelImpl(
      {required this.userId,
      required this.id,
      required this.title,
      final List<PhotoViewModel> photos = const []})
      : _photos = photos;

  @override
  final int userId;
  @override
  final int id;
  @override
  final String title;
  final List<PhotoViewModel> _photos;
  @override
  @JsonKey()
  List<PhotoViewModel> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'AlbumViewModel(userId: $userId, id: $id, title: $title, photos: $photos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumViewModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, id, title,
      const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumViewModelImplCopyWith<_$AlbumViewModelImpl> get copyWith =>
      __$$AlbumViewModelImplCopyWithImpl<_$AlbumViewModelImpl>(
          this, _$identity);
}

abstract class _AlbumViewModel implements AlbumViewModel {
  const factory _AlbumViewModel(
      {required final int userId,
      required final int id,
      required final String title,
      final List<PhotoViewModel> photos}) = _$AlbumViewModelImpl;

  @override
  int get userId;
  @override
  int get id;
  @override
  String get title;
  @override
  List<PhotoViewModel> get photos;
  @override
  @JsonKey(ignore: true)
  _$$AlbumViewModelImplCopyWith<_$AlbumViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
