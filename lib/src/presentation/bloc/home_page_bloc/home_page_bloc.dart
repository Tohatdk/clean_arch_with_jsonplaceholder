import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:progress_bar/src/domain/use_case/get_user_uscase.dart';
import 'package:progress_bar/src/presentation/view_models/user_view_model.dart';

part 'home_page_bloc.freezed.dart';

part 'home_page_event.dart';

part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc(
      {required GetUsersUseCase getUsersUseCase,
  })  : _getUsersUseCase = getUsersUseCase,
        super(const HomePageState()) {
    on<LoadingStartEvent>(_onLoadingStartEvent);

  }

  final GetUsersUseCase _getUsersUseCase;


  Future<void> _onLoadingStartEvent(
    LoadingStartEvent event,
    Emitter<HomePageState> emit,
  ) async {
    // for (int i = 0; i <= 100; i++) {
    //   await Future.delayed(const Duration(milliseconds: 20,));
    //   print(i);
    //   emit(HomePageState(percent: i ));
    // }

    emit(state.copyWith(isLoading: true));

    final users = await _getUsersUseCase.call();

    emit(state.copyWith(percent: 40));
    final List<UserViewModel> userList = users.map((e) {
      final id = e.id;
      final name = e.name;
      final username = e.username;
      final email = e.email;
      return UserViewModel(
          id: id, name: name, username: username, email: email);
    }).toList();



    emit(state.copyWith(
      percent: 100,
      isLoading: false,
      userViewModelList: userList,
    ));
  }
}
