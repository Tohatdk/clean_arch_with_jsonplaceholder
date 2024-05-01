import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:progress_bar/di_dart.dart';
import 'package:progress_bar/features/auth_feature/domain/usecase/confitm_password_reset_usecase.dart';
import 'package:progress_bar/features/auth_feature/domain/usecase/get_register_usecase.dart';
import 'package:progress_bar/features/auth_feature/domain/usecase/send_reset_password_request_usecase.dart';
import 'package:progress_bar/features/auth_feature/domain/usecase/sign_in_usecase.dart';
import 'package:progress_bar/features/auth_feature/presentation/blocs/forgot_password_page_bloc/forgot_password_page_bloc.dart';
import 'package:progress_bar/features/auth_feature/presentation/blocs/login_page_bloc/login_page_bloc.dart';
import 'package:progress_bar/features/auth_feature/presentation/blocs/register_page_bloc/register_page_bloc.dart';

import 'package:progress_bar/features/auth_feature/presentation/ui/screens/forgot_password_page.dart';
import 'package:progress_bar/features/auth_feature/presentation/ui/screens/login_page.dart';
import 'package:progress_bar/features/auth_feature/presentation/ui/screens/register_page.dart';
import 'package:progress_bar/services/routes/app_route_paths.dart';
import 'package:progress_bar/src/domain/use_case/get_album_usecase.dart';
import 'package:progress_bar/src/domain/use_case/get_comment_usecase.dart';
import 'package:progress_bar/src/domain/use_case/get_photo_usecase.dart';
import 'package:progress_bar/src/domain/use_case/get_post_uscase.dart';
import 'package:progress_bar/src/domain/use_case/get_todo_usecase.dart';
import 'package:progress_bar/src/domain/use_case/get_user_uscase.dart';
import 'package:progress_bar/src/presentation/bloc/home_page_bloc/home_page_bloc.dart';
import 'package:progress_bar/src/presentation/bloc/user_detalis_page_bloc/user_details_page_bloc.dart';
import 'package:progress_bar/src/presentation/ui/pages/home_page.dart';
import 'package:progress_bar/src/presentation/ui/pages/user_detalis_page.dart';
import 'package:progress_bar/src/presentation/view_models/user_view_model.dart';

final rootNaveKey = GlobalKey<NavigatorState>(debugLabel: 'rooNav');

abstract class AppRouteConfig {

  static final GoRouter router = GoRouter(
    navigatorKey: rootNaveKey,
    redirect: (context, state){

      final fullPath = state.fullPath ?? '';
      final isAuthenticated = FirebaseAuth.instance.currentUser!=null;
      final containsHomePath = fullPath.contains(AppRoutePaths.homePageRoute.path);

      if(isAuthenticated && !containsHomePath){
        //home/user_details
        //skip
        return AppRoutePaths.homePageRoute.path;
      }

      if(state.fullPath?.isEmpty??false){
        return AppRoutePaths.loginPageRoute.path;
      }
      return state.fullPath;
    },

    routes: [
      GoRoute(
        path: AppRoutePaths.loginPageRoute.path,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              LoginPageBloc(signInUseCase: getIt.get<SignInUseCase>()),
          child: const LoginPage(),
        ),
        routes: [
          GoRoute(
            path: AppRoutePaths.registerPageRoute.path,
            builder: (context, state) {
              return BlocProvider(
                create: (BuildContext context) => RegisterPageBloc(
                    createUserUsecase: getIt.get<CreateUserUseCase>()),
                child: const RegisterPage(),
              );
            },
          ),

          GoRoute(
            path: AppRoutePaths.forgotPasswordPageRoute.path,
            builder: (context, state) => BlocProvider(
                create: (_) => ForgotPasswordPageBloc(
                  sendResetPasswordRequestUseCase: getIt.get<SendResetPasswordRequestUseCase>(),
                  confirmPasswordUseCase: getIt.get<ConfirmPasswordUseCase>(),
                ),
                child:
                    const ForgotPasswordPage()), // Вложенный маршрут для страницы "забыли пароль"
          ),
        ],
      ),
      GoRoute(
          path: AppRoutePaths.homePageRoute.path, // http://www.assd.kz/home
          parentNavigatorKey: rootNaveKey,
          builder: (context, state) => BlocProvider(
            create: (_)=> HomePageBloc(getUsersUseCase: getIt.get<GetUsersUseCase>()),
            child: const HomePage(
                  title: 'MyTitle',
                ),
          ),
          routes: [
            GoRoute(
                path: AppRoutePaths.userDetailsPageRoute.path,
                builder: (context, state) => BlocProvider(
                      create: (context) => UserDetailsPageBloc(
                        getPostsUseCase: getIt<GetPostsUseCase>(),
                        getAlbumsUseCase: getIt<GetAlbumsUseCase>(),
                        getPhotosUseCase: getIt<GetPhotosUseCase>(),
                        getCommentsUseCase: getIt<GetCommentsUseCase>(),
                        getTodosUseCase: getIt<GetTodosUseCase>(),
                      ),
                      child:
                          UserDetailsPage(user: state.extra as UserViewModel),
                    ))
          ]),
    ],
  );
}
