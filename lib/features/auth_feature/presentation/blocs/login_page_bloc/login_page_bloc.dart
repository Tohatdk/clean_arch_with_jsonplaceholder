import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:progress_bar/features/auth_feature/domain/usecase/get_login_usecase.dart';
import 'package:progress_bar/features/auth_feature/presentation/view_models/email_text_from_view_model.dart';
import 'package:progress_bar/features/auth_feature/presentation/view_models/password_text_from_view_model.dart';

part 'login_page_bloc.freezed.dart';

part 'login_page_event.dart';

part 'login_page_state.dart';

class LoginPageBloc extends Bloc<LoginPageEvent, LoginPageState> {
  LoginPageBloc({required GetLoginUseCase getLoginUseCase})
      : _getLoginUseCase = getLoginUseCase,
        super(const LoginPageState()) {
    on<EmailTextFieldChangeEvent>(_onEmailTextFieldChangeEvent);
    on<PasswordTextFieldChangeEvent>(_onPasswordTextFieldChangeEvent);
    on<SignInSubmitEvent>(_onSignInSubmitEvent);
  }

  final GetLoginUseCase _getLoginUseCase;

  Future<void> _onEmailTextFieldChangeEvent(EmailTextFieldChangeEvent event,
      Emitter<LoginPageState> emit) async {
    // Проверка формата электронной почты
    bool isEmailValid = EmailValidator.validate(event.email);
    // Обновление состояния блока
    print(isEmailValid);
    emit(state.copyWith(
      emailViewModel: state.emailViewModel.copyWith(
        errorMessage: isEmailValid ? '' : 'Неверный формат электронной почты',
        value: event.email, // обновляем значение электронной почты
        isValid: isEmailValid,
      ),
    ));
  }

  Future<void> _onPasswordTextFieldChangeEvent(
      PasswordTextFieldChangeEvent event, Emitter<LoginPageState> emit) async {
    // final regExp =
    //     RegExp(r'^(?=.*?[A-Z])(?=.*?[0-9]).{6,}$');

    bool isPasswordValid = event.password.length>5;

    emit(state.copyWith(
      passwordViewModel: state.passwordViewModel.copyWith(
        // errorMessage: isPasswordValid ? '' : 'Пароль слишком слабый',
        value: event.password, // обновляем значение пароля
        isValid: isPasswordValid,
      ),

    ));
  }

  Future<void> _onSignInSubmitEvent(SignInSubmitEvent event,
      Emitter<LoginPageState> emit) async {
    final login = await _getLoginUseCase.signIn(
      email: state.emailViewModel.value,
      password: state.passwordViewModel.value,
    );
    emit(state.copyWith(/* какие-то изменения состояния */));
  }
}