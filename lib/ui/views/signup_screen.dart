import '../../core/viewmodels/signup_viewmodel.dart';
import 'base_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<SignupViewModel>(
      //TODO:
      onModelReady: (model) {},
      model: SignupViewModel(authenticationService: Provider.of(context)),
      builder: (context, model, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(),
          body: Center(child: Text('signup')),
        );
      },
      child: Text('signupchild'),
    );
  }
}
