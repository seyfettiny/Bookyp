import 'dart:async';
import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../models/user.dart';
import 'api.dart';

class AuthenticationService {
  final Api _api;

  AuthenticationService({required Api api}) : _api = api;

  StreamController<User> _userController = StreamController<User>();

  Stream<User> get user => _userController.stream;

  Future<User> createUserWithEmailAndPassword(
      String email, String password) async {
    throw UnimplementedError();
  }

  Future<User> currentUser() async {
    throw UnimplementedError();
  }

  Future<User> sendPasswordForgot(String email) async {
    throw UnimplementedError();
  }

  Future<User> sendPasswordReset(String password, String jwtToken) async {
    throw UnimplementedError();
  }

  Future<bool> signInWithEmailAndPassword(String email, String password) async {
    var response = await _api.post(dotenv.env['API_ROUTE_LOG_IN']!,
        {'email': email, 'password': password});

    var hasUser = response != null;
    if (hasUser) {
      Map<String, dynamic> responseToken = response;
      var user =
          User(mail: email, token: responseToken.values.first.toString());
      _userController.add(user);
    } else {
      print(response.message);
    }
    return hasUser;
  }
}
