import 'package:progress_bar/features/auth_feature/domain/entities/account_entity.dart';
import 'package:progress_bar/features/auth_feature/domain/repository/account_repository.dart';

class GetLoginUseCase {
  final AccountRepository _accountRepository;

  const GetLoginUseCase(this._accountRepository);

  Future<AccountEntity?> signIn({
    required String email,
    required String password,
  }) async {
    final account = await _accountRepository.signIn(
      email: email,
      password: password,
    );
    return account;
  }
}
