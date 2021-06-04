import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

class LanguageNotifier extends ChangeNotifier {
  Locale _locale = Locale('en', 'US');
  LanguageNotifier(this._locale);

  final List<Locale> _localeList = [
    Locale('en', 'US'),
    Locale('tr', 'TR'),
  ];

  Locale get getLocale => _locale;

  List<Locale> get getLocaleList => _localeList;

  void setLocale(Locale locale) async {
    _locale = locale;
    notifyListeners();
  }
}
