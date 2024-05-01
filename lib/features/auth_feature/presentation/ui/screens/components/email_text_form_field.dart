import 'package:flutter/material.dart';
import 'package:progress_bar/features/auth_feature/presentation/view_models/email_text_from_view_model.dart';

class EmailTextFormField extends StatelessWidget {
  final EmailFormViewModel viewModel;
  final TextEditingController controller;
  const EmailTextFormField({super.key, required this.viewModel, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          errorText: viewModel.errorMessage,
          icon: const Icon(Icons.email), labelText: "Введите email"),
    );
  }
}
