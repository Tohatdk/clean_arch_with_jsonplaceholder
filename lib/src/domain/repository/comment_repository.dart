import 'package:progress_bar/src/domain/entities/comment_entity.dart';

abstract interface  class CommentRepository{
  Future<List<CommentEntity>>getComments();
}