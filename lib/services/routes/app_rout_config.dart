import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:progress_bar/di_dart.dart';
import 'package:progress_bar/features/auth_feature/domain/usecase/get_register_usecase.dart';
import 'package:progress_bar/features/auth_feature/domain/usecase/sign_in_usecase.dart';
import 'package:progress_bar/features/auth_feature/presentation/blocs/login_page_bloc/login_page_bloc.dart';
import 'package:progress_bar/features/auth_feature/presentation/blocs/register_page_bloc/register_page_bloc.dart';
import 'package:progress_bar/features/auth_feature/presentation/ui/screens/login_page.dart';
import 'package:progress_bar/features/auth_feature/presentation/ui/screens/register_page.dart';
import 'package:progress_bar/services/routes/app_route_paths.dart';
import 'package:progress_bar/src/domain/use_case/get_album_usecase.dart';
import 'package:progress_bar/src/domain/use_case/get_comment_usecase.dart';
import 'package:progress_bar/src/domain/use_case/get_photo_usecase.dart';
import 'package:progress_bar/src/domain/use_case/get_post_uscase.dart';
import 'package:progress_bar/src/domain/use_case/get_todo_usecase.dart';
import 'package:progress_bar/src/presentation/bloc/home_page_bloc/home_page_bloc.dart';
import 'package:progress_bar/src/presentation/bloc/user_detalis_page_bloc/user_details_page_bloc.dart';
import 'package:progress_bar/src/presentation/ui/pages/home_page.dart';
import 'package:progress_bar/src/presentation/ui/pages/loading_page.dart';
import 'package:progress_bar/src/presentation/ui/pages/user_detalis_page.dart';
import 'package:progress_bar/src/presentation/view_models/user_view_model.dart';

final rootNaveKey = GlobalKey<NavigatorState>(debugLabel: 'rooNav');

class AppRouteConfig {
  const AppRouteConfig();

  static final GoRouter router = GoRouter(
    navigatorKey: rootNaveKey,
    initialLocation: AppRoutePaths.login,
  // observers: [NavigatorObserver()],
    routes: [
      GoRoute(
        path: AppRoutePaths.login,
        builder: (context, state) => BlocProvider(
          create: ( context) =>
              LoginPageBloc(signInUseCase: getIt.get<SignInUsecase>()),
          child: const LoginPage(),
        ),
      ),
      GoRoute(
          path: AppRoutePaths.loading,
          builder: (context, state) => BlocProvider.value(
              value: getIt.get<HomePageBloc>(),
              child: const LoadingPage()),
        routes: [
          GoRoute(
              path: AppRoutePaths.home,
              parentNavigatorKey: rootNaveKey,
              builder: (context, state) => const HomePage(
                title: 'MyTitle',

              ),
              routes: [
                GoRoute(path: AppRoutePaths.userDetails,builder: (context,state)=>  BlocProvider(
                  create: (context) => UserDetailsPageBloc(
                    getPostsUseCase: getIt<GetPostsUseCase>(),
                    getAlbumsUseCase: getIt<GetAlbumsUseCase>(),
                    getPhotosUseCase: getIt<GetPhotosUseCase>(),
                    getCommentsUseCase: getIt<GetCommentsUseCase>(),
                    getTodosUseCase: getIt<GetTodosUseCase>(),

                  ),
                  child: UserDetailsPage(user:state.extra as UserViewModel),
                ))
              ]
          ),
        ]
        ),
      GoRoute(
        path: AppRoutePaths.register,
        builder: (context, state) {
          return BlocProvider(
            create: (BuildContext context) => RegisterPageBloc(
                createUserUsecase: getIt.get<CreateUserUsecase>()),
            child: const RegisterPage(),
          );
        },
      ),

    ],
  );
}
