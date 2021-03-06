import 'core/constants/route_paths.dart';
import 'core/services/api.dart';
import 'core/services/authentication_service.dart';
import 'provider_setup.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'core/generated/locale_keys.g.dart';
import 'core/notifiers/theme_notifier.dart';
import 'core/constants/app_constants.dart';
import 'ui/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  await Hive.initFlutter();
  await Hive.openBox('themeBox');
  await EasyLocalization.ensureInitialized();
  runApp(
    MultiProvider(
      providers: providers,
      child: EasyLocalization(
        supportedLocales: [
          const Locale('en', 'US'),
          const Locale('tr', 'TR'),
        ],
        path: 'assets/lang',
        fallbackLocale: Locale('en', 'US'),
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      supportedLocales: EasyLocalization.of(context)!.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: EasyLocalization.of(context)!.locale,
      title: AppConstants.appName,
      theme: themeNotifier.getTheme,
      initialRoute: RoutePaths.login,
      onGenerateRoute: Router.generateRoute,
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required this.themeNotifier,
  }) : super(key: key);

  final ThemeNotifier themeNotifier;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.title.tr()),
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
    );
  }
}
