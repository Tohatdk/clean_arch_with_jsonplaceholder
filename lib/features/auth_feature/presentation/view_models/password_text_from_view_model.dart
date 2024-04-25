import 'package:freezed_annotation/freezed_annotation.dart';
part 'password_text_from_view_model.freezed.dart';
@freezed
class PasswordTextFromViewModel with _$PasswordTextFromViewModel{
  const factory PasswordTextFromViewModel({
    @Default('') String value,
    @Default('')  String errorMessage,
    @Default(true) bool isValid,
    @Default(true) bool isObscured,
})=_PasswordTextFromViewModel;
}