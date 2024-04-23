
import 'package:progress_bar/src/data/data_sources/data_source.dart';
import 'package:progress_bar/src/data/dto_entity_mapper.dart';
import 'package:progress_bar/src/domain/entities/post_entity.dart';
import 'package:progress_bar/src/domain/repository/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  final DataSource _postDataSource;

  PostRepositoryImpl(this._postDataSource);

  @override
  Future<List<PostEntity>> getPosts() async{
    final dtoPostList = await _postDataSource.getPosts();

    //final mapTest= dtoPostList.map((e) => e.title).toList();
    //преобразовать dtoentity в entity
    final List<PostEntity> postList = dtoPostList.map((postDto) => postDto.toEntity()).toList(growable: false);//??
   //final postList=dtoPostList.map((e)=>e.toEntity()).toList();
    return postList;
  }
}