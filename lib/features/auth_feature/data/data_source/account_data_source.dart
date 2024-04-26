import 'package:firebase_auth/firebase_auth.dart';
import 'package:progress_bar/core/network/error.dart';

class AccountDataSource {

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<UserCredential?> signIn({
    required String email,
    required String password,
  }) async {
    try {
      print('*****************************************************');
      print('email: $email \npassword: $password');
      print('*****************************************************');
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      print('*****************************************************');
      print(userCredential.user?.email);
      print('*****************************************************');
      return userCredential;
    } on FirebaseAuthException catch (e) {
      print(e);
        throw IncorrectDataError(
            message: 'Ошибка входа в систему: ${e.code}'
        );
    } catch (e) {
      throw NetworkError(
          message: 'Ошибка входа в систему: $e'
      );
    }
  }

  Future<UserCredential?> createUser({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('Пароль слишком простой.');
      } else if (e.code == 'email-already-in-use') {
        print('Учетная запись уже существует для этого адреса электронной почты.');
      } else {
        print('Ошибка создания пользователя: ${e.message}');
      }
      return null;
    } catch (e) {
      print('Ошибка создания пользователя: $e');
      return null;
    }
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
