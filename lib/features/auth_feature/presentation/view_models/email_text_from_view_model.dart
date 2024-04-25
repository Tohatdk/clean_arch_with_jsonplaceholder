import 'package:freezed_annotation/freezed_annotation.dart';
part 'email_text_from_view_model.freezed.dart';

@freezed
class EmailTextFromViewModel with _$EmailTextFromViewModel{
  const factory EmailTextFromViewModel({
    @Default('') String value,
  @Default(true) bool isValid,
  @Default('') String errorMessage,
})=_EmailTextFromViewModel;

}