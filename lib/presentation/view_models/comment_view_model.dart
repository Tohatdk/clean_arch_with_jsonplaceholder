import 'package:freezed_annotation/freezed_annotation.dart';
part 'comment_view_model.freezed.dart';
@freezed
class CommentViewModel with _$CommentViewModel {
 const factory CommentViewModel({
    required int postId,

    required int id,
    required String name,
    required String email,
    required String body,
  })=_CommentViewModel;
}