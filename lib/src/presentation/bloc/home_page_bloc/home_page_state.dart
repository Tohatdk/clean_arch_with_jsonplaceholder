part of 'home_page_bloc.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    @Default([]) List<UserViewModel> userViewModelList,
    @Default(0) int percent,
    @Default(false) bool isLoading,

  }) =_HomePageState;
}
