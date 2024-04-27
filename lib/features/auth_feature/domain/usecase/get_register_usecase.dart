import 'package:either_dart/either.dart';
import 'package:progress_bar/core/network/error.dart';
import 'package:progress_bar/features/auth_feature/domain/entities/account_entity.dart';
import 'package:progress_bar/features/auth_feature/domain/repository/account_repository.dart';

class CreateUserUsecase {
  final AccountRepository _accountRepository;

  const CreateUserUsecase(this._accountRepository);

  Future<Either<AppError,AccountEntity?>> call({
    required String email,
    required String password,
  }) async {
   try{
     final account = await _accountRepository.createUser(
      email: email,
      password: password,
    );
    return Right(account);
  }on AppError catch (error){
  return Left(error);
  }
}
}

