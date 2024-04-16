import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progress_bar/di_dart.dart';
import 'package:progress_bar/domain/use_case/get_album_usecase.dart';
import 'package:progress_bar/domain/use_case/get_comment_usecase.dart';
import 'package:progress_bar/domain/use_case/get_photo_usecase.dart';
import 'package:progress_bar/domain/use_case/get_post_uscase.dart';
import 'package:progress_bar/domain/use_case/get_todo_usecase.dart';
import 'package:progress_bar/domain/use_case/get_user_uscase.dart';
import 'package:progress_bar/presentation/bloc/home_page_bloc/home_page_bloc.dart';
import 'package:progress_bar/presentation/bloc/user_detalis_page_bloc/user_details_page_bloc.dart';
import 'package:progress_bar/presentation/ui/pages/loading_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
        BlocProvider(
          create: (context) => HomePageBloc(
            getUsersUseCase: getIt.get<GetUsersUseCase>(),
          )..add(LoadingStartEvent()),
          child: const MaterialApp(
        title: 'Flutter Demo',
        home: LoadingPage(),
      ),
    );
  }
}
