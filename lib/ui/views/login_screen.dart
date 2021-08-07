import 'package:bookyp/core/generated/locale_keys.g.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../core/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../core/constants/route_paths.dart';
import '../widgets/login_header.dart';
import '../../core/viewmodels/login_viewmodel.dart';
import 'base_widget.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController =
      TextEditingController(text: 'asd@asd.us');
  final TextEditingController _passwordController =
      TextEditingController(text: 'asd@asd.us');

  @override
  Widget build(BuildContext context) {
    return BaseWidget<LoginViewModel>(
      model: LoginViewModel(authenticationService: Provider.of(context)),
      builder: (context, model, child) {
        return WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: SafeArea(
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Text(
                              'Bookyp.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .fontFamily,
                                  fontSize: 60,
                                  height: 0.8,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        )),
                    Flexible(flex: 2, child: child!),
                    Flexible(
                      flex: 1,
                      child: model.busy
                          ? CircularProgressIndicator(
                              backgroundColor: Colors.red,
                            )
                          : ElevatedButton(
                              onPressed: () async {
                                var loginSuccess =
                                    await model.signInWithEmailAndPassword(
                                        _emailController.text,
                                        _passwordController.text);
                                if (loginSuccess) {
                                  Navigator.restorablePushNamedAndRemoveUntil(
                                      context,
                                      RoutePaths.home,
                                      (route) => false);
                                } else {
                                  //TODO:
                                  print('error');
                                }
                              },
                              child: Text(LocaleKeys.login.tr()),
                            ),
                    ),
                    Text(LocaleKeys.or.tr()),
                    Container(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Fluttertoast.showToast(
                                  msg: 'Not implemented yet 😢');
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: FaIcon(FontAwesomeIcons.google),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Fluttertoast.showToast(
                                  msg: 'Not implemented yet 😢');
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: FaIcon(FontAwesomeIcons.apple),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Fluttertoast.showToast(
                                  msg: 'Not implemented yet 😢');
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: FaIcon(FontAwesomeIcons.twitter),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Fluttertoast.showToast(
                                  msg: 'Not implemented yet :(');
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: FaIcon(
                              FontAwesomeIcons.facebook,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(LocaleKeys.or.tr()),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.restorablePushNamed(
                              context, RoutePaths.signup);
                        },
                        child: Text(LocaleKeys.signup.tr()),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      child: LoginHeader(
          emailController: _emailController,
          passwordController: _passwordController),
    );
  }
}
