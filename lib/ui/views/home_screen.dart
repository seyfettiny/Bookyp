import 'package:fluttertoast/fluttertoast.dart';

import '../../core/notifiers/theme_notifier.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../core/generated/locale_keys.g.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            LocaleKeys.title.tr(),
            style: TextStyle(
                fontFamily: Theme.of(context).textTheme.headline3!.fontFamily,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.palette),
              onPressed: () {
                themeNotifier.setTheme();
              },
            ),
            IconButton(
              icon: Icon(Icons.text_fields),
              onPressed: () {
                context.locale == Locale('tr', 'TR')
                    ? context.setLocale(Locale('en', 'US'))
                    : context.setLocale(Locale('tr', 'TR'));
              },
            )
          ],
        ),
        body: Center(
          child: Container(
            child: Text(LocaleKeys.hello_world.tr()),
          ),
        ),
      ),
    );
  }
}
