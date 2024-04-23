import 'package:progress_bar/src/data/data_sources/data_source.dart';
import 'package:progress_bar/src/data/dto_entity_mapper.dart';
import 'package:progress_bar/src/domain/entities/comment_entity.dart';
import 'package:progress_bar/src/domain/repository/comment_repository.dart';

class CommentRepositoryImpl implements CommentRepository{
 final  DataSource _commentRepository;
  CommentRepositoryImpl(this._commentRepository);

 @override
  Future<List<CommentEntity>> getComments()async{
   final dtoCommentList=await _commentRepository.getComments();
   final commentsList= dtoCommentList.map((e)=>e.toEntity()).toList(growable: false);
   return commentsList;
 }
}