part of'user_details_page_bloc.dart';

@freezed
class UserDetailsPageState with _$UserDetailsPageState {
  const factory UserDetailsPageState({
    @Default([]) List<PostViewModel> postViewModelList,
    @Default([]) List<AlbumViewModel> albumViewModelList,
    @Default([]) List<TodoViewModel> todoViewModelList,
    @Default(false) bool isLoading,
  })=_UserDetailsPageState;

  const UserDetailsPageState._();


  List<TodoViewModel> get completedTodos => todoViewModelList.where((e)=>e.completed).toList(); // zaversh
  List<TodoViewModel> get inCompletedTodos => todoViewModelList.where((e)=>!e.completed).toList(); // ne zaversh


}