import 'package:progress_bar/features/auth_feature/domain/entities/account_entity.dart';

abstract interface class AccountRepository{
 Future<AccountEntity?> signIn({ required String email,
  required String password,});
 Future<AccountEntity?> createUser({ required String email,
  required String password,});
 Future<void> signOut();
 }
