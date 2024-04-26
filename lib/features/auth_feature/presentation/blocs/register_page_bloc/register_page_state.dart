part of 'register_page_bloc.dart';

enum RegistrationStatus {none, loading, failure, succeed}

@freezed
class RegisterPageState with _$RegisterPageState {
  const factory RegisterPageState({
    @Default(EmailTextFromViewModel()) EmailTextFromViewModel emailViewModel,
    @Default(PasswordTextFromViewModel()) PasswordTextFromViewModel passwordViewModel,
    @Default(RepeatPasswordTextFromViewModel()) RepeatPasswordTextFromViewModel repeatPasswordFromViewModel,
    @Default(RegistrationStatus.none) RegistrationStatus status,
    @Default('') String message,
  }) = _RegisterPageState;
}
