import 'package:bookyp/core/constants/route_paths.dart';

import '../../core/viewmodels/login_viewmodel.dart';
import 'base_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BaseWidget<LoginViewModel>(
      model: LoginViewModel(authenticationService: Provider.of(context)),
      builder: (context, model, child) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('data'),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Email',
                        border: OutlineInputBorder()),
                    controller: _mailController,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Password',
                        border: OutlineInputBorder()),
                    controller: _passwordController,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.restorablePushNamedAndRemoveUntil(
                        context, RoutePaths.home, (route) => false);
                  },
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        );
      },
      child: Center(
        child: Column(
          children: [
            Text('data'),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: TextField(
                decoration: InputDecoration.collapsed(hintText: 'Email'),
                controller: _mailController,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration.collapsed(hintText: 'Password'),
                controller: _passwordController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
