import 'package:progress_bar/src/data/data_sources/data_source.dart';
import 'package:progress_bar/src/data/dto_entity_mapper.dart';
import 'package:progress_bar/src/domain/entities/user_entity.dart';
import 'package:progress_bar/src/domain/repository/user_repository.dart';

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