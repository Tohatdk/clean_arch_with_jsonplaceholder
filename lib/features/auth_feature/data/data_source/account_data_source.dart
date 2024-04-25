import 'package:firebase_auth/firebase_auth.dart';

class AccountDataSource {

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<UserCredential?> signIn({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('Пользователь с таким адресом электронной почты не найден.');
      } else if (e.code == 'wrong-password') {
        print('Неверный пароль для этого пользователя.');
      } else {
        print('Ошибка входа в систему: ${e.message}');
      }
      return null;
    } catch (e) {
      print('Ошибка входа в систему: $e');
      return null;
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
