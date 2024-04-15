part of'user_details_page_bloc.dart';

@freezed
class UserDetailsPageState with _$UserDetailsPageState {
  const factory UserDetailsPageState({

    @Default([]) List<PostViewModel> postViewModelList,
    @Default([]) List<PhotoViewModel> photoViewModelList,
    @Default([]) List<AlbumViewModel> albumViewModelList,
    @Default([]) List<TodoViewModel> todoViewModelList,
    @Default([]) List<CommentViewModel> commentViewModelList,
    @Default(false) bool isLoading,
  })=_UserDetailsPageState;
}