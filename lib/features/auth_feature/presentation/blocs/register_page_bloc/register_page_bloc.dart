
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:progress_bar/features/auth_feature/domain/usecase/get_register_usecase.dart';
import 'package:progress_bar/features/auth_feature/presentation/view_models/email_text_from_view_model.dart';
import 'package:progress_bar/features/auth_feature/presentation/view_models/password_text_from_view_model.dart';
import 'package:progress_bar/features/auth_feature/presentation/view_models/repeat_password_text_from_view_model.dart';
import 'package:rxdart/rxdart.dart';

part 'register_page_bloc.freezed.dart';

part 'register_page_event.dart';

part 'register_page_state.dart';

typedef StateEmitter = Emitter<RegisterPageState>;

class RegisterPageBloc extends Bloc<RegisterPageEvent, RegisterPageState> {
  RegisterPageBloc({required CreateUserUsecase createUserUsecase}): _getRegisterUseCase = createUserUsecase,
        super(const RegisterPageState())
    {on<EditEmailEvent>(_editEmail, transformer: _debounceEvent<EditEmailEvent>);
    on<EditPasswordEvent>(_changePassword, transformer: _debounceEvent<EditPasswordEvent>);
    on<EditConfimrationPasswordEvent>(_editConfirmPass, transformer: _debounceEvent<EditConfimrationPasswordEvent>);
    on<TogglePasswordEvent>((_, emit) {
      final viewModel = state.passwordViewModel;
      emit(state.copyWith(
          passwordViewModel:
          viewModel.copyWith(isObscured: !viewModel.isObscured)));
    });



    on<ToggleConfirmationPasswordEvent>((_, emit) {
      final viewModel = state.repeatPasswordFromViewModel;
      emit(state.copyWith(
          repeatPasswordFromViewModel:
          viewModel.copyWith(isObscured: !viewModel.isObscured)));
    });
    on<SendDataEvent>(_submit);
    on<ClearError>((e,emit){
      emit(state.copyWith(message: '', status: RegistrationStatus.none));
    });
  }

  final CreateUserUsecase _getRegisterUseCase;

  Future<void> _changePassword(EditPasswordEvent event,
      StateEmitter emit) async {
    final passVm = state.passwordViewModel;
    final isStrongPassword = isPasswordStrongEnough(emit);

    final message = isStrongPassword ? null : 'Пароль ненадежный!';

    emit(state.copyWith(
        passwordViewModel: passVm.copyWith(
          value: event.password,
          isValid: isStrongPassword,
          errorMessage: message,
        )));
  }

  Future<void> _editEmail(EditEmailEvent event, StateEmitter emit) async {
    final newEmailTextViewModel =
    state.emailViewModel.copyWith(value: event.email);

    emit(state.copyWith(emailViewModel: newEmailTextViewModel));
  }

  Future<void> _editConfirmPass(EditConfimrationPasswordEvent event,
      Emitter<RegisterPageState> emit,) async {
    final password = event.confirmationPassword;
    final viewModel = state.repeatPasswordFromViewModel;

    emit(state.copyWith(
        repeatPasswordFromViewModel: viewModel.copyWith(
          value: password,
        )));
  }

  Future<void> _submit(SendDataEvent event,
      Emitter<RegisterPageState> emit) async {
    emit(state.copyWith(
        status: RegistrationStatus.loading,
        message: 'Fucking shit happened on front side'));
    //проверка на идентичность паролей
    final bool identicalPasswords = checkPasswordsIdentity(emit);
    final validEmail = isEmailValid(emit);
    final strongPassword = isPasswordStrongEnough(emit);
    // проверка емайла и валидация пароля
    final bool isAllDataIsValid =
        strongPassword && validEmail && identicalPasswords;

    if (!isAllDataIsValid) {
      emit(state.copyWith(
          status: RegistrationStatus.failure,
          message: 'Fucking shit happened on front side'));
      return;
    }

    final result =
    await _getRegisterUseCase.call(email: state.emailViewModel.value,
        password: state.passwordViewModel.value);

    if (result == null) {
      emit(state.copyWith(
          status: RegistrationStatus.failure,
          message: 'Fucking shit happened on server side'));
      return;
    }

    emit(state.copyWith(
        status: RegistrationStatus.succeed,
        message: 'Congratulations mathafacka'));
  }

  //vtorostepennie
  bool isPasswordStrongEnough(Emitter<RegisterPageState> emit) {
    final passwordRegex = RegExp(r'^(?=.*?[A-Z])(?=.*?[0-9]).{6,}$');
    final isValid = passwordRegex.hasMatch(state.passwordViewModel.value);

    if(!isValid){
      final passVm = state.passwordViewModel.copyWith(
        isValid: isValid, errorMessage: 'Пароли не соответсвует требованиям!',);
      emit(state.copyWith(passwordViewModel:passVm));
    }

    return isValid;
  }

  bool checkPasswordsIdentity(Emitter<RegisterPageState> emit) {
    final isValid = state.passwordViewModel.value ==
        state.repeatPasswordFromViewModel.value;
    if (!isValid) {
      final passVm = state.passwordViewModel.copyWith(
        isValid: isValid, errorMessage: 'Пароли не совпадают',);
      emit(state.copyWith(passwordViewModel:passVm));
    }
    return isValid;
  }

  bool isEmailValid(Emitter<RegisterPageState> emit) {
    final emailRegex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    final isValid = emailRegex.hasMatch(state.emailViewModel.value);

    if (!isValid) {
      final emailVm = state.emailViewModel.copyWith(
        isValid: isValid, errorMessage: 'Неправильный email',);
      emit(state.copyWith(emailViewModel:emailVm));
    }

    return isValid;
  }

  Stream<T> _debounceEvent<T extends RegisterPageEvent>(Stream<T> stream ,Stream<T> Function(T) s) =>
      stream.debounceTime(const Duration(milliseconds: 500)).asyncExpand(s);
}
