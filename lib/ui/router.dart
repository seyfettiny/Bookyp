import 'views/home_screen.dart';
import 'views/signup_screen.dart';

import '../core/constants/route_paths.dart';

import 'views/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Router {
  static final Router _instance = Router._init();
  static Router get instance => _instance;
  Router._init();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case RoutePaths.signup:
        return CupertinoPageRoute(builder: (_) => SignUpScreen());
      case RoutePaths.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
