
import 'package:progress_bar/domain/entities/user_entity.dart';
import 'package:progress_bar/domain/repository/user_repository.dart';

class GetUsersUseCase{
  final UserRepository _userRepository;

  const GetUsersUseCase(this._userRepository);


  Future<List<UserEntity>>call()async{
    final userList=await _userRepository.getUsers();
    return userList;
  }
}
//return userprository.getUser(); без логики кратко