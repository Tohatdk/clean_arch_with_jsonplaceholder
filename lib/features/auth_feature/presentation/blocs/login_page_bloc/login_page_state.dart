part of 'login_page_bloc.dart';

enum LoginPageStatus{none,loading,failure,succeed}

@freezed
class LoginPageState with _$LoginPageState{
const factory LoginPageState({
  @Default(EmailTextFromViewModel()) EmailTextFromViewModel emailViewModel,
  @Default(PasswordTextFromViewModel()) PasswordTextFromViewModel passwordViewModel,
  @Default(LoginPageStatus.none) LoginPageStatus status,
  @Default('') String errorMessage,
})=_LoginPageState;
}

