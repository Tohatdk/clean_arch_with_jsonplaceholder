
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:progress_bar/src/presentation/view_models/comment_view_model.dart';
part 'post_view_model.freezed.dart';
@freezed
class PostViewModel with _$PostViewModel {
 const factory PostViewModel({
    required int userId,
    required int id,
    required String title,
    required String body,
   @Default([])List<CommentViewModel> comments,
  }) = _PostViewModel;
}
