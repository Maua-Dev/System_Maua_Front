import 'package:system_maua_front/app/modules/login/login_module.dart';
import 'package:system_maua_front/app/modules/login/login_page.dart';
import 'package:system_maua_front/app/shared/auth/repositories/auth_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AuthRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: LoginModule()),
  ];
}
