import 'package:progress_bar/domain/entities/comment_entity.dart';
import 'package:progress_bar/domain/repository/comment_repository.dart';

class GetCommentsUseCase{
  final CommentRepository _commentRepository;
  const GetCommentsUseCase(this._commentRepository);

  Future<List<CommentEntity>>call()async{
    final commentList= _commentRepository.getComments();
    return commentList;
  }

}