import 'package:progress_bar/core/network/error.dart';
import 'package:progress_bar/features/auth_feature/domain/entities/account_entity.dart';
import 'package:progress_bar/features/auth_feature/domain/repository/account_repository.dart';
import 'package:either_dart/either.dart';

class SignInUsecase {
  final AccountRepository _accountRepository;

  const SignInUsecase(this._accountRepository);

  Future<Either<AppError, AccountEntity?>> execute({
    required String email,
    required String password,
  }) async {
    try{
      final account = await _accountRepository.signIn(
        email: email,
        password: password,
      );
      return Right(account);
    }on AppError catch (error){
      return Left(error);
    }
  }
}
