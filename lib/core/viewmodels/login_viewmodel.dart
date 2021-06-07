import '../services/authentication_service.dart';
import 'base_viewmodel.dart';

class LoginViewModel extends BaseViewModel {
  final AuthenticationService _authenticationService;
  LoginViewModel({required AuthenticationService authenticationService})
      : _authenticationService = authenticationService;

  Future<bool> signInWithEmailAndPassword(String email, String password) async {
    setBusy(true);
    var result = await _authenticationService.signInWithEmailAndPassword(
        email, password);
    setBusy(false);
    return result;
  }
}
