


import 'package:progress_bar/domain/entities/user_entity.dart';

abstract interface class UserRepository{
  Future<List<UserEntity>> getUsers();
}
