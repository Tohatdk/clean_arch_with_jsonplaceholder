// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoViewModel {
  int get userId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoViewModelCopyWith<TodoViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoViewModelCopyWith<$Res> {
  factory $TodoViewModelCopyWith(
          TodoViewModel value, $Res Function(TodoViewModel) then) =
      _$TodoViewModelCopyWithImpl<$Res, TodoViewModel>;
  @useResult
  $Res call({int userId, int id, String title, bool completed});
}

/// @nodoc
class _$TodoViewModelCopyWithImpl<$Res, $Val extends TodoViewModel>
    implements $TodoViewModelCopyWith<$Res> {
  _$TodoViewModelCopyWithImpl(this._value, this._then);

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
    Object? completed = null,
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
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoViewModelImplCopyWith<$Res>
    implements $TodoViewModelCopyWith<$Res> {
  factory _$$TodoViewModelImplCopyWith(
          _$TodoViewModelImpl value, $Res Function(_$TodoViewModelImpl) then) =
      __$$TodoViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, int id, String title, bool completed});
}

/// @nodoc
class __$$TodoViewModelImplCopyWithImpl<$Res>
    extends _$TodoViewModelCopyWithImpl<$Res, _$TodoViewModelImpl>
    implements _$$TodoViewModelImplCopyWith<$Res> {
  __$$TodoViewModelImplCopyWithImpl(
      _$TodoViewModelImpl _value, $Res Function(_$TodoViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? title = null,
    Object? completed = null,
  }) {
    return _then(_$TodoViewModelImpl(
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
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TodoViewModelImpl implements _TodoViewModel {
  const _$TodoViewModelImpl(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  @override
  final int userId;
  @override
  final int id;
  @override
  final String title;
  @override
  final bool completed;

  @override
  String toString() {
    return 'TodoViewModel(userId: $userId, id: $id, title: $title, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoViewModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, id, title, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoViewModelImplCopyWith<_$TodoViewModelImpl> get copyWith =>
      __$$TodoViewModelImplCopyWithImpl<_$TodoViewModelImpl>(this, _$identity);
}

abstract class _TodoViewModel implements TodoViewModel {
  const factory _TodoViewModel(
      {required final int userId,
      required final int id,
      required final String title,
      required final bool completed}) = _$TodoViewModelImpl;

  @override
  int get userId;
  @override
  int get id;
  @override
  String get title;
  @override
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$$TodoViewModelImplCopyWith<_$TodoViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
