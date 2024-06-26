import 'package:firebase_auth/firebase_auth.dart';
import 'package:progress_bar/features/auth_feature/data/data_source/account_data_source.dart';
import 'package:progress_bar/features/auth_feature/data/dto_account_mapper.dart';

import 'package:progress_bar/features/auth_feature/domain/entities/account_entity.dart';
import 'package:progress_bar/features/auth_feature/domain/repository/account_repository.dart';

class AccountRepositoryImpl implements AccountRepository {
  final AccountDataSource _accountDataSource;
  final FirebaseAuth _firebaseAuth;

  AccountRepositoryImpl(this._accountDataSource, this._firebaseAuth);

  @override
  Future<AccountEntity?> signIn({
    required String email,
    required String password,
  }) async {
    final userCredentials =
        await _accountDataSource.signIn(email: email, password: password);
    final accountEntity = userCredentials?.toEntity();
    return accountEntity;
  }

  @override
  Future<AccountEntity?> createUser({
    required String email,
    required String password,
  }) async {
    final userCredentials =
        await _accountDataSource.createUser(email: email, password: password);
    final accountEntity = userCredentials?.toEntity();
    return accountEntity;
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<void> confirmPassword({ required String newPassword,required String code}) async {
    final userCredentials = await _accountDataSource.confirmPasswordReset(newPassword,code);
    return userCredentials;
  }

  @override
  Future<void> sendResetPassword({required String email}) async {
    final userCredentials = await _accountDataSource.sendResetPasswordRequest(email);
    return userCredentials;
  }
}
