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
import 'package:progress_bar/src/presentation/ui/pages/home_page.dart';
import 'package:progress_bar/src/presentation/ui/pages/loading_page.dart';

final rootNaveKey = GlobalKey<NavigatorState>(debugLabel: 'rooNav');

class AppRouteConfig {
  const AppRouteConfig();

  static final GoRouter router = GoRouter(
    navigatorKey: rootNaveKey,
    initialLocation: AppRoutePaths.auth,
    routes: [
      GoRoute(
        path: AppRoutePaths.home,
        builder: (context, state) => const HomePage(
          title: 'MyTitle',
        ),
      ),
      GoRoute(
        path: AppRoutePaths.auth,
        builder: (context, state) => BlocProvider(
          create: (BuildContext context) => LoginPageBloc(signInUseCase: getIt.get<SignInUsecase>()),
          child: const LoginPage(),
        ),
      ),
      GoRoute(
        path: AppRoutePaths.loading,
        builder: (context, state) => const LoadingPage(),
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
