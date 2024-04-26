import 'package:freezed_annotation/freezed_annotation.dart';

part 'repeat_password_text_from_view_model.freezed.dart';

@freezed
class RepeatPasswordTextFromViewModel with _$RepeatPasswordTextFromViewModel {
  const factory RepeatPasswordTextFromViewModel({
    @Default('') String value,
    String? errorMessage,
    @Default(true) bool isValid,
    @Default(true) bool isObscured,
  }) = _RepeatPasswordTextFromViewModel;
}
