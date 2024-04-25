import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progress_bar/di_dart.dart';

import 'package:progress_bar/services/routes/app_rout_config.dart';

import 'package:progress_bar/src/domain/use_case/get_user_uscase.dart';
import 'package:progress_bar/src/presentation/bloc/home_page_bloc/home_page_bloc.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
        BlocProvider(
          create: (context) => HomePageBloc(
            getUsersUseCase: getIt.get<GetUsersUseCase>(),
          )..add(LoadingStartEvent()),
          child: MaterialApp.router(
            routerConfig: AppRouteConfig().router(),
        title: 'Flutter Demo',

      ),
    );
  }
}
