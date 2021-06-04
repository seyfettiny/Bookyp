import 'api.dart';

class AuthenticationService {
  final Api _api;

  AuthenticationService({required Api api}) : _api = api;
  Future login(int? userId) async {
    return true;
  }
}
