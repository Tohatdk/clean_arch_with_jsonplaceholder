import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:progress_bar/features/auth_feature/domain/usecase/get_register_usecase.dart';
import 'package:progress_bar/features/auth_feature/presentation/view_models/email_text_from_view_model.dart';
import 'package:progress_bar/features/auth_feature/presentation/view_models/password_text_from_view_model.dart';
import 'package:progress_bar/features/auth_feature/presentation/view_models/repeat_password_text_from_view_model.dart';

part 'register_page_bloc.freezed.dart';

part 'register_page_event.dart';

part 'register_page_state.dart';

typedef StateEmitter = Emitter<RegisterPageState>;

class RegisterPageBloc extends Bloc<RegisterPageEvent, RegisterPageState> {
  RegisterPageBloc({required GetRegisterUseCase getRegisterUseCase})
      : _getRegisterUseCase = getRegisterUseCase,
        super(const RegisterPageState()) {
    on<RegisterPageEvent>(_handleEvents);
    // on<EditEmailTextFieldEvent>(_onEmailTextFieldChangeEvent);
    // on<EditPasswordTextFieldEvent>(_onPasswordTextFieldChangeEvent);
    // on<RepeatPasswordTextFieldChangeEvent>(_onRepeatPasswordTextFieldChangeEvent);
    // on<SendDataEvent>(_onSendDataEvent);
  }

  final GetRegisterUseCase _getRegisterUseCase;

  Future<void> _handleEvents(RegisterPageEvent event, StateEmitter emit) async {
    event.when(
      editEmail: (email) => _editEmailViewModel(email, emit),
      editPassword: (password) {},
      editConfirmationPassword: (password) {},
      togglePassword: () {},
      toggleConfirmationPassword: () {},
      sendData: () {},
    );
  }

  Future<void> _editEmailViewModel(String email, StateEmitter emit) async {
    final isNotValid = email.isEmpty; //TODO: email validation

    if (isNotValid) {
      final emailTextViewModel = state.emailViewModel.copyWith(
        isValid: isNotValid,
        errorMessage: 'Invalid email',
      );

      emit(state.copyWith(emailViewModel: emailTextViewModel));
      return;
    }

    final newEmailTextViewModel = state.emailViewModel.copyWith(value: email);

    emit(state.copyWith(emailViewModel: newEmailTextViewModel));
  }

  // Future<void> _onEmailTextFieldChangeEvent(EditEmailTextFieldEvent event,
  //     Emitter<RegisterPageState> emit) async {
  //   // Проверка формата электронной почты
  //   bool isEmailValid = EmailValidator.validate(event.email);
  //   // Обновление состояния блока с новым значением электронной почты и его валидностью
  //   emit(state.copyWith(
  //     emailViewModel: state.emailViewModel.copyWith(
  //       value: event.email,
  //       isValid: isEmailValid,
  //       errorMessage: isEmailValid ? '' : 'Неверный формат электронной почты',
  //     ),
  //   ));
  // }

  // Future<void> _onPasswordTextFieldChangeEvent(
  //     EditPasswordTextFieldEvent event,
  //     Emitter<RegisterPageState> emit,
  //     ) async {
  //   bool isPasswordValid = isPasswordStrongEnough(event.password);
  //   emit(state.copyWith(
  //     passwordViewModel: state.passwordViewModel.copyWith(
  //       value: event.password,
  //       isValid: isPasswordValid,
  //       errorMessage: isPasswordValid ? '' : 'Пароль слишком слабый',
  //     ),
  //   ));
  // }

  bool isPasswordStrongEnough(String password) {
    final passwordRegex = RegExp(r'^(?=.*?[A-Z])(?=.*?[0-9]).{6,}$');
    return passwordRegex.hasMatch(password);
  }
// Future<void>_onRepeatPasswordTextFieldChangeEvent(
//     RepeatPasswordTextFieldChangeEvent event,
//     Emitter<RegisterPageState>emit,)async{
//   }
//
//
//
//
//   Future<void> _onSendDataEvent(SendDataEvent event,
//       Emitter<RegisterPageState> emit) async {
//     Отображение состояния загрузки
// emit(state.copyWith(isLoading: true, failureMessage: ''));
// }
}
