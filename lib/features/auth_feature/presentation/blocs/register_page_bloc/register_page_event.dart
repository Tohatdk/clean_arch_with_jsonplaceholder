part of'register_page_bloc.dart';

@freezed
class RegisterPageEvent with _$RegisterPageEvent{
  const factory RegisterPageEvent.editEmail(String email) = _EditEmailEvent;
  const factory RegisterPageEvent.editPassword(String password) = _EditPasswordEvent;
  const factory RegisterPageEvent.editConfirmationPassword(String confirmationPassword) = _EditConfimrationPasswordEvent;
  const factory RegisterPageEvent.togglePassword() = _TogglePasswordEvent;
  const factory RegisterPageEvent.toggleConfirmationPassword() = _ToggleConfirmationPasswordEvent;
  const factory RegisterPageEvent.sendData() = _SendDataEvent;
}
