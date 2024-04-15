

import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_view_model.freezed.dart';
@freezed
class TodoViewModel with _$TodoViewModel {
 const factory TodoViewModel({

    required int userId,
    required int id,
    required String title,
    required bool completed,
  })=_TodoViewModel;
}