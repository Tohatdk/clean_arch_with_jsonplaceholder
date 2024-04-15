import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:progress_bar/domain/use_case/get_album_usecase.dart';
import 'package:progress_bar/domain/use_case/get_comment_usecase.dart';
import 'package:progress_bar/domain/use_case/get_photo_usecase.dart';
import 'package:progress_bar/domain/use_case/get_post_uscase.dart';
import 'package:progress_bar/domain/use_case/get_todo_usecase.dart';
import 'package:progress_bar/presentation/view_models/album_view_model.dart';
import 'package:progress_bar/presentation/view_models/comment_view_model.dart';
import 'package:progress_bar/presentation/view_models/photo_view_model.dart';
import 'package:progress_bar/presentation/view_models/post_view_model.dart';
import 'package:progress_bar/presentation/view_models/todo_view_model.dart';


part 'user_details_page_bloc.freezed.dart';
part 'user_details_page_event.dart';
part 'user_details_page_state.dart';

class UserDetailsPageBloc extends Bloc <UserDetailsPageEvent,UserDetailsPageState> {
  UserDetailsPageBloc({
    required GetPostsUseCase getPostsUseCase,
    required GetPhotosUseCase getPhotosUseCase,
    required GetAlbumsUseCase getAlbumsUseCase,
    required GetTodosUseCase getTodosUseCase,
    required GetCommentsUseCase getCommentsUseCase})
      :_getPostsUseCase = getPostsUseCase,
        _getPhotosUseCase = getPhotosUseCase,
        _getAlbumsUseCase = getAlbumsUseCase,
        _getTodosUseCase = getTodosUseCase,
        _getCommentsUseCase = getCommentsUseCase,
 super(const UserDetailsPageState()) {
   on<LoadInitialEvent>(_onLoadInitialEvent);
   // on<LoadPostsByUserIdEvent>(_onLoadPostsByUserIdEvent);
  }
  final GetPostsUseCase _getPostsUseCase;
  final GetPhotosUseCase _getPhotosUseCase;
  final GetAlbumsUseCase _getAlbumsUseCase;
  final GetTodosUseCase _getTodosUseCase;
  final GetCommentsUseCase _getCommentsUseCase;

  Future<void>_onLoadInitialEvent(LoadInitialEvent event,Emitter<UserDetailsPageState>emit)async{
     emit(state.copyWith(isLoading:true));
    final post = await _getPostsUseCase.call();

     /// => VM =>emit new state

    final postList = post
        .map((e) => PostViewModel(
      userId: e.userId,
      id: e.id,
      title: e.title,
      body: e.body,
    ))
        .toList();

    final album = await _getAlbumsUseCase.call();
    final albumList = album
        .map((e) => AlbumViewModel(userId: e.userId, id: e.id, title: e.title))
        .toList();

    final photo = await _getPhotosUseCase.call();
    final photoList = photo
        .map((e) => PhotoViewModel(
        albumId: e.albumId,
        id: e.id,
        title: e.title,
        url: e.url,
        thumbnailUrl: e.thumbnailUrl))
        .toList();

    final todo = await _getTodosUseCase.call();
    final todoList = todo
        .map((e) => TodoViewModel(
        userId: e.userId, id: e.id, title: e.title, completed: e.completed))
        .toList();
    final comment = await _getCommentsUseCase.call();
    final commentList = comment
        .map((e) => CommentViewModel(
        postId: e.postId,
        id: e.id,
        name: e.name,
        email: e.email,
        body: e.body))
        .toList();
    emit(state.copyWith(    postViewModelList: postList,
        albumViewModelList: albumList,
        photoViewModelList: photoList,
        todoViewModelList: todoList,
        commentViewModelList: commentList,isLoading:false));
  }
}