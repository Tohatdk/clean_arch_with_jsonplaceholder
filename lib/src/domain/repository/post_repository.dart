import 'package:progress_bar/src/domain/entities/post_entity.dart';

abstract interface class PostRepository{
  Future<List<PostEntity>> getPosts();
}
