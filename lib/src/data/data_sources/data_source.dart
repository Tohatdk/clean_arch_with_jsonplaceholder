import 'dart:convert';

import 'package:progress_bar/core/network/http_client.dart';
import 'package:progress_bar/src/data/entities/comment_entity_dto.dart';
import 'package:progress_bar/src/data/entities/photo_entity_dto.dart';
import 'package:progress_bar/src/data/entities/post_entity_dto.dart';
import 'package:progress_bar/src/data/entities/album_entity_dto.dart';
import 'package:progress_bar/src/data/entities/todo_entity_dto.dart';
import 'package:progress_bar/src/data/entities/user_entity_dto.dart';

class DataSource {
  final HttpClient _httpClient = HttpClient();

  Future<List<UserEntityDto>> getUsers() async {
    final response = await _httpClient.get(path: 'users');

    final data = jsonDecode(response
        .body) as List; //1 step: Response.body(String) => List<dynamic>//with help of decode
    final dtoUserList = data.map((e) => UserEntityDto.fromJson(e)).toList();
    return dtoUserList;
  }

  Future<List<PostEntityDto>> getPosts() async {
    final response = await _httpClient.get(path: 'posts');

    final data = jsonDecode(response
        .body) as List; //1 step: Response.body(String) => List<dynamic>//with help of decode
    final dtoPostList = data.map((e) => PostEntityDto.fromJson(e)).toList();
    return dtoPostList;
  }

  Future<List<AlbumEntityDto>> getAlbums() async {
    final response = await _httpClient.get(path: 'albums');
    final data = jsonDecode(response.body) as List;
    final dtoAlbumList = data.map((e) => AlbumEntityDto.fromJson(e))
        .toList();
    return dtoAlbumList;
  }

  Future<List<PhotoEntityDto>>getPhotos()async{
    final response = await _httpClient.get(path:"photos");
    final data = jsonDecode(response.body) as List;
    final dtoPhotoList = data.map((e)=>PhotoEntityDto.fromJson(e)).toList();
    return dtoPhotoList;
  }
  Future<List<CommentEntityDto>>getComments()async{
    final response = await _httpClient.get(path:'comments');
    final data = jsonDecode(response.body) as List;
    final dtoCommentList=data.map((e)=>CommentEntityDto.fromJson(e)).toList();
    return dtoCommentList;
  }
  Future<List<TodoEntityDto>>getTodos()async{
    final response = await _httpClient.get(path: 'todos');
    final data= jsonDecode(response.body) as List;
    final dtoTodoList= data.map((e)=>TodoEntityDto.fromJson(e)).toList();
    return dtoTodoList;
  }
}