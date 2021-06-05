import '../theme/dark_theme..dart';
import '../theme/light_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ThemeNotifier extends ChangeNotifier {
  bool _isDark = true;
  var box = Hive.box('themeBox');
  ThemeNotifier() {
    if (box.containsKey('currentTheme')) {
      _isDark = box.get('currentTheme');
    } else {
      box.put('currentTheme', _isDark);
    }
  }

  ThemeData get getTheme => _isDark ? darkTheme : lightTheme;

  void setTheme() {
    _isDark = !_isDark;
    box.put('currentTheme', _isDark);
    notifyListeners();
  }
}
