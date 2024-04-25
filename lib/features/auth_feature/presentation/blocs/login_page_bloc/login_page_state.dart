part of 'login_page_bloc.dart';

@freezed
class LoginPageState with _$LoginPageState{
const factory LoginPageState({
  @Default(EmailTextFromViewModel()) EmailTextFromViewModel emailViewModel,
  @Default(PasswordTextFromViewModel()) PasswordTextFromViewModel passwordViewModel,
})=_LoginPageState;
}

