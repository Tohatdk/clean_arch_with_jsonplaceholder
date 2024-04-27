import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:progress_bar/di_dart.dart';
import 'package:progress_bar/features/auth_feature/domain/usecase/get_register_usecase.dart';
import 'package:progress_bar/features/auth_feature/presentation/blocs/register_page_bloc/register_page_bloc.dart';
import 'package:progress_bar/services/routes/app_route_paths.dart';
import 'package:rxdart/rxdart.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController passwordEditingController = TextEditingController();
  final TextEditingController confirmPasswordEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      emailEditingController.addListener(() {
        context
            .read<RegisterPageBloc>()
            .add(RegisterPageEvent.editEmail(emailEditingController.text));
      });
      passwordEditingController.addListener(() {
        context.read<RegisterPageBloc>().add(
            RegisterPageEvent.editPassword(passwordEditingController.text));
      });
      confirmPasswordEditingController.addListener(() {
        context.read<RegisterPageBloc>().add(
            RegisterPageEvent.editConfirmationPassword(
                confirmPasswordEditingController.text));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RegisterPageBloc>();
    return BlocListener<RegisterPageBloc, RegisterPageState>(
      listenWhen: (context, oldState){
        return oldState.status != RegistrationStatus.none;
      },
      listener: (BuildContext context, state) {
        switch(state.status){
          case RegistrationStatus.loading:
            context.loaderOverlay.show();
          case RegistrationStatus.failure:
            context.loaderOverlay.hide();
            showDialog(context: context, builder: (context){
              return AlertDialog(
                content: Text(state.message),
                actions: [
                  TextButton(onPressed: (){
                    bloc.add(const RegisterPageEvent.clearErrors());
                    context.pop();
                  }, child: const Text('OK'))
                ],
              );
            });
          case RegistrationStatus.succeed:
            context.loaderOverlay.hide();
            context.go(AppRoutePaths.loading);
          case RegistrationStatus.none:
        }
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: BlocBuilder<RegisterPageBloc, RegisterPageState>(
              builder: (context, state) {
            final emailViewModel = state.emailViewModel;
            final passwordViewModel = state.passwordViewModel;
            final confirmPasswordViewModel = state.repeatPasswordFromViewModel;
            final bloc = context.read<RegisterPageBloc>();

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Register Page'),
                TextFormField(
                  controller: emailEditingController,
                  decoration: InputDecoration(
                    errorText: emailViewModel.errorMessage,
                      icon: const Icon(Icons.email), labelText: "Введите email"),
                ),
                TextFormField(
                  controller: passwordEditingController,
                  obscureText: passwordViewModel.isObscured,
                  decoration: InputDecoration(
                    labelText: "Введите пароль",
                    errorText: passwordViewModel.errorMessage,
                    suffixIcon: IconButton(
                      onPressed: () {
                        bloc.add(const RegisterPageEvent.togglePassword());
                      },
                      icon: const Icon(Icons.remove_red_eye_outlined),
                    ),
                  ),
                ),
                TextFormField(
                  controller: confirmPasswordEditingController,
                  onChanged: (confirmationPassword) {
                    context.read<RegisterPageBloc>().add(
                        RegisterPageEvent.editConfirmationPassword(
                            confirmationPassword));
                  },
                  obscureText: confirmPasswordViewModel.isObscured,
                  decoration: InputDecoration(
                    errorText: confirmPasswordViewModel.errorMessage,
                    hintText: "Подвтердите паоль",
                    suffixIcon: IconButton(
                      onPressed: () {
                        bloc.add(
                            const RegisterPageEvent.toggleConfirmationPassword());
                      },
                      icon: const Icon(Icons.remove_red_eye_outlined),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => bloc.add(const RegisterPageEvent.sendData()),
                  child: const Text("Register"),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    emailEditingController.dispose();
    passwordEditingController.dispose();
    confirmPasswordEditingController.dispose();
    super.dispose();
  }
}
