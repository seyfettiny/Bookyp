import '../services/authentication_service.dart';
import 'base_viewmodel.dart';

class LoginViewModel extends BaseViewModel {
  final AuthenticationService _authenticationService;
  LoginViewModel({required AuthenticationService authenticationService})
      : _authenticationService = authenticationService;

  Future<bool> signInWithEmailAndPassword(String email, String password) async {
    setBusy(true);
    try {
      var result = await _authenticationService.signInWithEmailAndPassword(
          email, password);
      setBusy(false);
      return true;
      // ignore: avoid_types_as_parameter_names
    } catch (e) {
      print('Error occured ' + e.toString());
      setBusy(false);
      return false;
    }
  }
}
    // TODO: get books
    // Map<String, dynamic> parsed = result[0];
    // var book = Book.fromJson(parsed);
    // print(book.publishDate);