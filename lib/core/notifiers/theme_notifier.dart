import 'package:bookyp/core/theme/dark_theme..dart';
import 'package:bookyp/core/theme/light_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _themeData;
  ThemeNotifier(this._themeData);

  ThemeData get getTheme => _themeData;

  void setTheme() async {
    if (_themeData == darkTheme) {
      _themeData = lightTheme;
    } else {
      _themeData = darkTheme;
    }
    notifyListeners();
  }
}
