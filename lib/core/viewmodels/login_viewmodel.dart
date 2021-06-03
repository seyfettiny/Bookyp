import '../services/authentication_service.dart';
import 'base_viewmodel.dart';

class LoginViewModel extends BaseViewModel {
  final AuthenticationService _authenticationService;
  LoginViewModel({required AuthenticationService authenticationService})
      : _authenticationService = authenticationService;

  Future<bool> login(String userIdText) async {
    setBusy(true);
    var userId = int.tryParse(userIdText);
    return await _authenticationService.login(userId);
  }
}
