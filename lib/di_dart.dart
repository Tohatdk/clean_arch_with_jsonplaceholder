import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:progress_bar/features/auth_feature/data/data_source/account_data_source.dart';
import 'package:progress_bar/features/auth_feature/data/repository/account_repository.dart';
import 'package:progress_bar/features/auth_feature/domain/repository/account_repository.dart';
import 'package:progress_bar/features/auth_feature/domain/usecase/sign_in_usecase.dart';
import 'package:progress_bar/features/auth_feature/domain/usecase/get_register_usecase.dart';
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
  ///services
  getIt.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
  ///datasources
  getIt.registerFactory<DataSource>(() => DataSource());
  /// account datasource
  getIt.registerFactory<AccountDataSource>(() => AccountDataSource());
  ///repositories
  getIt.registerFactory<UserRepository>(() => UserRepositoryImpl(getIt.get<DataSource>()));
  getIt.registerFactory<PostRepository>(() => PostRepositoryImpl(getIt.get<DataSource>()));
  getIt.registerSingleton<PhotoRepository>( PhotoRepositoryImpl(getIt.get<DataSource>()));
  getIt.registerFactory<AlbumRepository>(() => AlbumRepositoryImpl(getIt.get<DataSource>()));
  getIt.registerFactory<TodoRepository>(() => TodoRepositoryImpl(getIt.get<DataSource>()));
  getIt.registerFactory<CommentRepository>(() => CommentRepositoryImpl(getIt.get<DataSource>()));

  ///usecases
  getIt.registerFactory<GetCommentsUseCase>(() => GetCommentsUseCase(getIt.get<CommentRepository>()));
  getIt.registerFactory<GetAlbumsUseCase>(() => GetAlbumsUseCase(getIt.get<AlbumRepository>()));
  getIt.registerFactory<GetPostsUseCase>(() => GetPostsUseCase(getIt.get<PostRepository>()));
  getIt.registerFactory<GetUsersUseCase>(() => GetUsersUseCase(getIt.get<UserRepository>()));
  getIt.registerFactory<GetTodosUseCase>(() => GetTodosUseCase(getIt.get<TodoRepository>()));
  getIt.registerFactory<GetPhotosUseCase>(() => GetPhotosUseCase(getIt.get<PhotoRepository>()));
  ///repositories Account
  getIt.registerFactory<AccountRepository>(() => AccountRepositoryImpl(getIt.get<AccountDataSource>(), getIt.get<FirebaseAuth>()));

  ///authUseCases
  getIt.registerFactory<SignInUsecase>(() => SignInUsecase(getIt.get<AccountRepository>()));
  getIt.registerFactory<CreateUserUsecase>(() => CreateUserUsecase(getIt.get<AccountRepository>()));


}