import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/splash/splash_module.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/bottom_navigation_bar_controller.dart';

import 'modules/activities/activities_module.dart';
import 'modules/home-aluno/home_aluno_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => BottomNavigationBarController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/home', module: HomeAlunoModule()),
    ModuleRoute('/splash', module: SplashModule()),
    ModuleRoute('/activities', module: ActivitiesModule()),
  ];
}
