import 'package:bookyp/ui/router.dart';

import 'core/notifiers/theme_notifier.dart';
import 'core/services/authentication_service.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'core/services/api.dart';
import 'core/models/user.dart';

List<SingleChildWidget> providers = [
  ...independentServices,
  ...dependentServices,
  ...uiConsumableProviders
];

List<SingleChildWidget> independentServices = [
  Provider.value(
    value: Api(),
  ),
  ChangeNotifierProvider<ThemeNotifier>(
    create: (_) => ThemeNotifier(),
  ),
  Provider.value(value: Router.instance)
];

List<SingleChildWidget> dependentServices = [
  ProxyProvider<Api, AuthenticationService>(
    update: (context, api, authenticationService) =>
        AuthenticationService(api: api),
  )
];

List<SingleChildWidget> uiConsumableProviders = [
  StreamProvider<User>(
    initialData: User(),
    create: (context) =>
        Provider.of<AuthenticationService>(context, listen: false).user,
  )
];
