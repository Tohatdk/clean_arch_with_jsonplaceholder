import 'package:progress_bar/features/auth_feature/domain/entities/account_entity.dart';
import 'package:progress_bar/features/auth_feature/domain/repository/account_repository.dart';

class GetRegisterUseCase {
  final AccountRepository _accountRepository;

  const GetRegisterUseCase(this._accountRepository);

  Future<AccountEntity?> createUser({
    required String email,
    required String password,
  }) async {
    final account = await _accountRepository.createUser(
      email: email,
      password: password,
    );
    return account;
  }
}
