import 'package:progress_bar/src/domain/entities/user_entity.dart';

abstract interface class UserRepository{
  Future<List<UserEntity>> getUsers();
}
