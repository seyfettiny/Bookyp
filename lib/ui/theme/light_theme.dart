import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final ThemeData lightTheme = ThemeData(
  primarySwatch: MaterialColor(4279440407, {
    50: Color(0xfff1f2f3),
    100: Color(0xffe3e4e8),
    200: Color(0xffc7cad1),
    300: Color(0xffabafba),
    400: Color(0xff8f94a3),
    500: Color(0xff73798c),
    600: Color(0xff5c6170),
    700: Color(0xff454954),
    800: Color(0xff2e3138),
    900: Color(0xff17181c)
  }),
  brightness: Brightness.light,
  primaryColor: Color(0xff191919),
  accentColor: Color(0xFF3f37c9),
  focusColor: Color(0xff17181c),
  textTheme: TextTheme(
    headline3: TextStyle(fontFamily: 'Poppins'),
  ),
  fontFamily: 'Poppins',
  appBarTheme: AppBarTheme(
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle.light),
);
