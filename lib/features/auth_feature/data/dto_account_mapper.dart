import 'package:firebase_auth/firebase_auth.dart';
import 'package:progress_bar/features/auth_feature/domain/entities/account_entity.dart';

extension AccountMapper on UserCredential{
  AccountEntity toEntity(){
    return AccountEntity(email: user?.email, id: user?.uid, accessToken: credential?.accessToken);
  }
}