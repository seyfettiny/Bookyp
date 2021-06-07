import 'dart:async';

import 'package:bookyp/core/models/user.dart';
import 'package:bookyp/core/services/auth_service.dart';

import 'api.dart';

class AuthenticationService extends IAuthService {
  final Api _api;

  AuthenticationService({required Api api}) : _api = api;

  StreamController<User> _userController = StreamController<User>();

  Stream<User> get user => _userController.stream;

  @override
  Future<User> createUserWithEmailAndPassword(String email, String password) {
    // TODO: implement createUserWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<User> currentUser() {
    // TODO: implement currentUser
    throw UnimplementedError();
  }

  @override
  Future<User> sendPasswordForgot(String email) {
    // TODO: implement sendPasswordForgot
    throw UnimplementedError();
  }

  @override
  Future<User> sendPasswordReset(String password, String jwtToken) {
    // TODO: implement sendPasswordReset
    throw UnimplementedError();
  }

  @override
  Future<bool> signInWithEmailAndPassword(String email, String password) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }
}
