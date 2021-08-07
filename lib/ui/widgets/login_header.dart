import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bookyp/core/generated/locale_keys.g.dart';
import 'package:bookyp/ui/shared/ui_helpers.dart';

class LoginHeader extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginHeader({
    Key? key,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);

  @override
  _LoginHeaderState createState() => _LoginHeaderState();
}

class _LoginHeaderState extends State<LoginHeader> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          UIHelper.spacing20,
          Container(
            padding: UIHelper.inputFieldPadding,
            child: TextFormField(
              autofocus: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: LocaleKeys.email.tr(),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide:
                      BorderSide(width: 1, color: Theme.of(context).focusColor),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    width: 8,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                prefix: Padding(
                  padding: UIHelper.inputDecorationPrefixPadding,
                  child: FaIcon(FontAwesomeIcons.solidEnvelope),
                ),
              ),
              autocorrect: true,
              enableSuggestions: true,
              autofillHints: {'asd@asd.us'},
              controller: widget.emailController,
            ),
          ),
          UIHelper.spacing20,
          Container(
            padding: UIHelper.inputFieldPadding,
            child: TextFormField(
              obscureText: hidePassword,
              decoration: InputDecoration(
                fillColor: Colors.orange,
                labelText: LocaleKeys.password.tr(),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide:
                      BorderSide(width: 1, color: Theme.of(context).focusColor),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    width: 8,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                prefix: Padding(
                  padding: UIHelper.inputDecorationPrefixPadding,
                  child: FaIcon(FontAwesomeIcons.key),
                ),
                suffixIcon: IconButton(
                  icon: hidePassword
                      ? FaIcon(FontAwesomeIcons.solidEye)
                      : FaIcon(FontAwesomeIcons.solidEyeSlash),
                  onPressed: () {
                    setState(() {
                      hidePassword = !hidePassword;
                    });
                  },
                ),
              ),
              autofillHints: {'asd@asd.us'},
              controller: widget.passwordController,
            ),
          ),
        ],
      ),
    );
  }
}
