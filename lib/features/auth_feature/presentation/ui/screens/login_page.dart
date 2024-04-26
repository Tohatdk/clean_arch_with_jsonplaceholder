import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:progress_bar/features/auth_feature/presentation/blocs/login_page_bloc/login_page_bloc.dart';
import 'package:progress_bar/services/routes/app_route_paths.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController passwordEditingController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      emailEditingController.addListener(() {
        context
            .read<LoginPageBloc>()
            .add(EmailTextFieldChangeEvent(email: emailEditingController.text));
      });
      passwordEditingController.addListener(() {
        context.read<LoginPageBloc>().add(PasswordTextFieldChangeEvent(
            password: passwordEditingController.text));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginPageBloc, LoginPageState>(
      listenWhen: (oldState, newState) =>
          newState.status != LoginPageStatus.none,
      listener: (context, state) {
        if (state.status == LoginPageStatus.failure) {
          showFailure(context);
        }
        if (state.status == LoginPageStatus.loading) {
          print('show moadl loading');
        }
        if (state.status == LoginPageStatus.succeed) {
          context.push(AppRoutePaths.loading);
          print('navigate to home');
        }
      },
      builder: (context, snapshot) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: BlocBuilder<LoginPageBloc, LoginPageState>(
              builder: (context, state) {
                final passwordViewModel = state.passwordViewModel;
                final bloc = context.read<LoginPageBloc>();

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: emailEditingController,
                      decoration: const InputDecoration(
                          icon: Icon(Icons.email), hintText: "email"),
                    ),
                    TextFormField(
                      controller: passwordEditingController,
                      obscureText: passwordViewModel.isObscured,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.security),
                        hintText: "password",
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            'Forgot password?',
                            style: TextStyle(
                              color: Colors.deepPurple,
                            ),
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {
                          bloc.add(SignInSubmitEvent());
                        },
                        child: const Text("Login")),
                    ElevatedButton(
                      onPressed: () {
                        context.push(AppRoutePaths.register);
                      },
                      child: const Text("Register"),
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }

  void showFailure(BuildContext context) {
    final bloc = context.read<LoginPageBloc>();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(bloc.state.errorMessage),
        actions: [
          TextButton(
            onPressed: () {
              bloc.add(ChangeStatusEvent());
              context.pop();
              //status => none
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    emailEditingController.dispose();
    passwordEditingController.dispose();
    super.dispose();
  }
}
