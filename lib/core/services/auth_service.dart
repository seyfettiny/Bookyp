import '../models/user.dart';

abstract class AuthService {
  Future<User> currentUser();
  Future<User> signInWithEmailAndPassword(String email, String password);
  Future<User> createUserWithEmailAndPassword(String email, String password);
  Future<User> sendPasswordForgot(String email);
  Future<User> sendPasswordReset(String password, String jwtToken);
}
