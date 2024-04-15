import 'package:progress_bar/data/data_sources/data_source.dart';
import 'package:progress_bar/data/dto_entity_mapper.dart';

import 'package:progress_bar/domain/entities/user_entity.dart';
import 'package:progress_bar/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final DataSource _userDataSource;

  UserRepositoryImpl(this._userDataSource);

  @override
  Future<List<UserEntity>> getUsers() async{
    final dtoUserList = await _userDataSource.getUsers();
    //преобразовать dtoentity в entity
    final List<UserEntity> userList = dtoUserList.map((userDto) => userDto.toEntity()).toList(growable: false);//??

    return userList;
  }
}