import 'package:flutter/material.dart';
import 'package:progress_bar/features/auth_feature/presentation/view_models/password_text_from_view_model.dart';

class PasswordTextFormField extends StatelessWidget {
  final String? hint;
  final TextEditingController controller;
  final PasswordFormViewModel viewModel;
  // final  void Function()? onTap; //i.e. VoidCallback == void Function() //true
  final  VoidCallback? onTap; //i.e. VoidCallback == void Function() //true

  const PasswordTextFormField({super.key, required this.controller, required this.viewModel, this.onTap, this.hint});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: viewModel.isObscured,
      decoration: InputDecoration(
        labelText: hint??"Введите пароль",
        errorText: viewModel.errorMessage,
        suffixIcon: IconButton(
          onPressed: onTap,
              // () {
            // bloc.add(const RegisterPageEvent.togglePassword());
          // },
          icon: const Icon(Icons.remove_red_eye_outlined),
        ),
      ),
    );
  }
}
