import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/home/repositories/home_repository.dart';
import 'package:system_maua_front/app/modules/user-configuration/user_configuration_module.dart';
import 'home_controller.dart';

import 'home_page.dart';
import 'repositories/home_repository_interface.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeController(i())),
    Bind.lazySingleton<IHomeRepository>((i) => HomeRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => HomePage(),
    ),
    ModuleRoute('/configuracoes-usuario', module: UserConfigurationModule())
  ];
}
