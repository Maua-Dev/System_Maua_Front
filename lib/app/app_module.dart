import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/splash/splash_module.dart';
import 'package:system_maua_front/app/modules/splash/splash_page.dart';

import 'modules/home/home_module.dart';
import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashModule()),
    ModuleRoute('/home', module: HomeModule())
  ];
}
