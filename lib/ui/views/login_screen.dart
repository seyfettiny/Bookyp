import '../../core/viewmodels/login_viewmodel.dart';
import 'base_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<LoginViewModel>(
      builder: (context, model, child) {
        return Scaffold(
          body: Container(
            child: Text('body'),
          ),
        );
      },
      model: LoginViewModel(authenticationService: Provider.of(context)),
      child: Container(
        child: Text('data'),
      ),
    );
  }
}
