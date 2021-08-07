import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final ThemeData darkTheme = ThemeData(
  primarySwatch: MaterialColor(4280361249, {
    50: Color(0xfff2f2f2),
    100: Color(0xffe6e6e6),
    200: Color(0xffcccccc),
    300: Color(0xffb3b3b3),
    400: Color(0xff999999),
    500: Color(0xff808080),
    600: Color(0xff666666),
    700: Color(0xff4d4d4d),
    800: Color(0xff222222),
    900: Color(0xff191919)
  }),
  brightness: Brightness.dark,
  primaryColor: Color(0xff101010),
  accentColor: Color(0xFFffb703),
  focusColor: Color(0xffe6e6e6),
  scaffoldBackgroundColor: Color(0xff191919),
  textTheme: TextTheme(
    headline3: TextStyle(fontFamily: 'Poppins'),
  ),
  fontFamily: 'Poppins',
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Colors.white,
    selectionHandleColor: Color(0xFFffb703),
  ),
  appBarTheme: AppBarTheme(
    backwardsCompatibility: true,
    systemOverlayStyle:
        SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  ),
);
