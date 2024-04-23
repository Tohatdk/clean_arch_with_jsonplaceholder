import 'package:get_it/get_it.dart';
import 'package:progress_bar/src/data/data_sources/data_source.dart';
import 'package:progress_bar/src/data/repository/album_repository.dart';
import 'package:progress_bar/src/data/repository/comment_repository.dart';
import 'package:progress_bar/src/data/repository/photo_repository.dart';
import 'package:progress_bar/src/data/repository/post_repository.dart';
import 'package:progress_bar/src/data/repository/todo_repository.dart';
import 'package:progress_bar/src/data/repository/user_repository.dart';
import 'package:progress_bar/src/domain/repository/album_repository.dart';
import 'package:progress_bar/src/domain/repository/comment_repository.dart';
import 'package:progress_bar/src/domain/repository/photo_repository.dart';
import 'package:progress_bar/src/domain/repository/post_repository.dart';
import 'package:progress_bar/src/domain/repository/todo_repository.dart';
import 'package:progress_bar/src/domain/repository/user_repository.dart';
import 'package:progress_bar/src/domain/use_case/get_album_usecase.dart';
import 'package:progress_bar/src/domain/use_case/get_comment_usecase.dart';
import 'package:progress_bar/src/domain/use_case/get_photo_usecase.dart';
import 'package:progress_bar/src/domain/use_case/get_post_uscase.dart';
import 'package:progress_bar/src/domain/use_case/get_todo_usecase.dart';
import 'package:progress_bar/src/domain/use_case/get_user_uscase.dart';

final getIt = GetIt.instance;

//dependency injection = di injection = инъекция
//D v SOLID - eto Dependency Inversion Princiре
void setup() {
  ///datasources
  getIt.registerFactory<DataSource>(() => DataSource());
  // getIt.registerFactory<PostDataSource>(() => PostDataSource());
  ///repositories
  getIt.registerFactory<UserRepository>(() => UserRepositoryImpl(getIt.get<DataSource>()));

  ///usecases
  getIt.registerFactory(() => GetUsersUseCase(getIt.get<UserRepository>()));

  ///repositories
  getIt.registerFactory<PostRepository>(() => PostRepositoryImpl(getIt.get<DataSource>()));

  ///usecases
  getIt.registerFactory(() => GetPostsUseCase(getIt.get<PostRepository>()));


  getIt.registerSingleton<PhotoRepository>( PhotoRepositoryImpl(getIt.get<DataSource>()));
  getIt.registerFactory<GetPhotosUseCase>(() => GetPhotosUseCase(getIt.get<PhotoRepository>()));


  getIt.registerFactory<AlbumRepository>(() => AlbumRepositoryImpl(getIt.get<DataSource>()));
  getIt.registerFactory(() => GetAlbumsUseCase(getIt.get<AlbumRepository>()));

  getIt.registerFactory<TodoRepository>(() => TodoRepositoryImpl(getIt.get<DataSource>()));
  getIt.registerFactory(() => GetTodosUseCase(getIt.get<TodoRepository>()));

  getIt.registerFactory<CommentRepository>(() => CommentRepositoryImpl(getIt.get<DataSource>()));
  getIt.registerFactory(() => GetCommentsUseCase(getIt.get<CommentRepository>()));
}