part of 'register_page_bloc.dart';
@freezed
class RegisterPageState with _$RegisterPageState{
  const factory RegisterPageState({
  @Default(EmailTextFromViewModel()) EmailTextFromViewModel emailViewModel,
  @Default(PasswordTextFromViewModel()) PasswordTextFromViewModel passwordViewModel,
  @Default(RepeatPasswordTextFromViewModel()) RepeatPasswordTextFromViewModel repeatPasswordFromViewModel,
  @Default(false) bool isLoading,
  @Default('') String failureMessage,
 })=_RegisterPageState;
}