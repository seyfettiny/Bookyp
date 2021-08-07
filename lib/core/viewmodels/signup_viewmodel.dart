import 'package:bookyp/core/services/authentication_service.dart';
import 'package:bookyp/core/viewmodels/base_viewmodel.dart';

class SignupViewModel extends BaseViewModel {
  final AuthenticationService _authenticationService;
  SignupViewModel({required AuthenticationService authenticationService})
      : _authenticationService = authenticationService;

  Future createUserWithEmailAndPassword(String email, String password) async {
    setBusy(true);
    var result = await _authenticationService.createUserWithEmailAndPassword(
        email, password);
    setBusy(false);
  }
}
