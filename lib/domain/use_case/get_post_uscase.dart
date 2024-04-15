

import 'package:progress_bar/domain/entities/post_entity.dart';
import 'package:progress_bar/domain/repository/post_repository.dart';

class GetPostsUseCase{
  final PostRepository _postRepository;

  const GetPostsUseCase(this._postRepository);


  Future<List<PostEntity>>call()async{
    final postList=await _postRepository.getPosts();
    return postList;
  }
}
//return userprository.getUser(); без логики кратко