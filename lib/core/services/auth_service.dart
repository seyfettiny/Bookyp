import '../models/user.dart';

abstract class IAuthService {
  Future<User> currentUser();
  Future<bool> signInWithEmailAndPassword(String email, String password);
  Future<User> createUserWithEmailAndPassword(String email, String password);
  Future<User> sendPasswordForgot(String email);
  Future<User> sendPasswordReset(String password, String jwtToken);
}
