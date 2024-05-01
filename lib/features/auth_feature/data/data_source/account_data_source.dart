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
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);

      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw IncorrectDataError(message: 'Ошибка входа в систему: ${e.code}');
    } catch (e) {
      throw NetworkError(message: 'Ошибка входа в систему: $e');
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
      throw IncorrectDataError(message: 'Ошибка входа в систему: ${e.code}');
    } catch (e) {
      throw UnauthorizedError(message: 'Ошибка создания пользователя: $e');
    } catch (e) {
      throw NetworkError(message: 'Ошибка входа в систему: $e');
    }
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  ///запрос на смену пароля:
  ///файрбейс пришлет код
  Future<void> sendResetPasswordRequest(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(
        email: email,
        actionCodeSettings: ActionCodeSettings(
          url: "https://pushnotitutorial-75506.web.app",
          androidPackageName: "com.example.progress_bar",
          androidMinimumVersion: '21',
          androidInstallApp: true,
          iOSBundleId: "com.example.progress_bar",
          handleCodeInApp: true,
        ),
      );
    } on FirebaseAuthException catch (e) {
      throw IncorrectDataError(message: 'Ошибка входа в систему: ${e.code}');
    } catch (e) {
      throw NetworkError(message: 'Ошибка входа в систему: $e');
    }
  }

  /// юзер должен ввести код и новый пароль
  ///
  Future<void> confirmPasswordReset(String code, String newPassword) async {
    try {
      await _firebaseAuth.confirmPasswordReset(
          code: code, newPassword: newPassword);
    } on FirebaseAuthException catch (e) {
      throw IncorrectDataError(message: 'Ошибка входа в систему: ${e.code}');
    } catch (e) {
      throw NetworkError(message: 'Ошибка входа в систему: $e');
    }
  }
}
