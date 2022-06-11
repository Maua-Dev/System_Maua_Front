import 'package:flutter_modular/flutter_modular.dart';

import 'user_configuration_page.dart';

class UserConfigurationModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => UserConfigurationPage(
        username: args.queryParams['username'] as String,
        userRa: args.queryParams['userRa'] as String,
        userPhoto: args.queryParams['userPhoto'] as String,
      ),
    ),
  ];
}
