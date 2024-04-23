part of'user_details_page_bloc.dart';

abstract class UserDetailsPageEvent{

}
class LoadInitialEvent extends UserDetailsPageEvent{
  final int userId;

  LoadInitialEvent(this.userId);
}
