
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_view_model.freezed.dart';
@freezed
class UserViewModel with _$UserViewModel{
  const factory UserViewModel({
    required int id,
    required String name,
    required String username,
    required String email,
})=_UserViewModel;

}