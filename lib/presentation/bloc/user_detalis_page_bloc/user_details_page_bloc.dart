import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:progress_bar/domain/entities/album_entity.dart';
import 'package:progress_bar/domain/entities/comment_entity.dart';
import 'package:progress_bar/domain/entities/photo_entity.dart';
import 'package:progress_bar/domain/entities/post_entity.dart';
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

class UserDetailsPageBloc
    extends Bloc<UserDetailsPageEvent, UserDetailsPageState> {
  UserDetailsPageBloc(
      {required GetPostsUseCase getPostsUseCase,
      required GetPhotosUseCase getPhotosUseCase,
      required GetAlbumsUseCase getAlbumsUseCase,
      required GetTodosUseCase getTodosUseCase,
      required GetCommentsUseCase getCommentsUseCase})
      : _getPostsUseCase = getPostsUseCase,
        _getPhotosUseCase = getPhotosUseCase,
        _getAlbumsUseCase = getAlbumsUseCase,
        _getTodosUseCase = getTodosUseCase,
        _getCommentsUseCase = getCommentsUseCase,
        super(const UserDetailsPageState()) {
    on<LoadInitialEvent>(_onLoadInitialEvent);
  }

  final GetPostsUseCase _getPostsUseCase;
  final GetPhotosUseCase _getPhotosUseCase;
  final GetAlbumsUseCase _getAlbumsUseCase;
  final GetTodosUseCase _getTodosUseCase;
  final GetCommentsUseCase _getCommentsUseCase;

  Future<void> _onLoadInitialEvent(
      LoadInitialEvent event, Emitter<UserDetailsPageState> emit) async {
    emit(state.copyWith(isLoading: true));

    ///****************Fetch Albums and Photos***********
    final albumsViewModelList = await fetchAlbums(event.userId);

    ///************** Fetch Posts and Comment **************
    final postsViewModelList = await fetchPosts(event.userId);

    /// add commentVM to PostsVM

    ///********************Fetch TODOS**********************
    final todosViewModelList = await fetchTodos(event.userId);

    emit(state.copyWith(
      albumViewModelList: albumsViewModelList,
      todoViewModelList: todosViewModelList,
      postViewModelList: postsViewModelList,
      isLoading: false,
    ));
  }

  Future<List<AlbumViewModel>> fetchAlbums(int userId) async {
    final albums = await _getAlbumsUseCase.call();
    final photos = await _getPhotosUseCase.call();
    final filteredAlbums = albums.where((album) => album.userId == userId);

    final albumList = filteredAlbums
        .map((e) => AlbumViewModel(
              userId: e.userId,
              id: e.id,
              title: e.title,
              photos: _filterPhotosByAlbumId(e, photos),
            ))
        .toList();

    return albumList;
  }

  List<PhotoViewModel> _filterPhotosByAlbumId(
      AlbumEntity albumEntity, List<PhotoEntity> photos) {
    final photoViewModels = photos.where((photo) => photo.albumId == albumEntity.id)
        .map((e) => PhotoViewModel(
              albumId: e.albumId,
              id: e.id,
              title: e.title,
              url: e.url,
              thumbnailUrl: e.thumbnailUrl,
            ))
        .toList();
    return photoViewModels;
  }

  Future<List<PostViewModel>> fetchPosts(int userId) async {
    final posts = await _getPostsUseCase.call();
    final comments = await _getCommentsUseCase.call();
    final filteredPost = posts.where((posts) => posts.userId == userId);
    final postList = filteredPost
        .map((e) => PostViewModel(
            userId: e.userId,
            id: e.id,
            title: e.title,
            body: e.body,
            comments: _filterCommentsByPostId(e, comments)))
        .toList();
    return postList;
  }

  List<CommentViewModel> _filterCommentsByPostId(
      PostEntity postEntity, List<CommentEntity> comments) {
    final commentViewModels = comments.where((comment) => comment.postId==postEntity.id)
        .map((e) => CommentViewModel(
            postId: e.postId,
            id: e.id,
            name: e.name,
            email: e.email,
            body: e.body))
        .toList();
    return commentViewModels;
  }

  Future<List<TodoViewModel>> fetchTodos(int userId) async {
    final todoEntityList = await _getTodosUseCase.call();
    final filteredTodo = todoEntityList.where((todo) => todo.userId == userId );
    final todoList = filteredTodo
        .map((e) => TodoViewModel(
            userId: e.userId, id: e.id, title: e.title, completed: e.completed))
        .toList();
    return todoList;
  }
}
