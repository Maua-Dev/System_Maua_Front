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
        username: args.data[0] as String,
        userRa: args.data[1] as String,
        userPhoto: args.data[2] as String,
      ),
    ),
  ];
}
