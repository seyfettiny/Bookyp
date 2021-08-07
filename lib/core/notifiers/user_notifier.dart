import '../models/user.dart';
import 'package:flutter/cupertino.dart';

class UserNotifier extends ChangeNotifier {
  var _user;

  User get user => _user;

  void setUser(User user) {
    _user = user;
    notifyListeners();
  }
}
