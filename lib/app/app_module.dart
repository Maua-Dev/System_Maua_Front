import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/login/login_module.dart';
import 'package:system_maua_front/app/modules/splash/splash_module.dart';
import 'package:system_maua_front/app/shared/auth/repositories/i_auth_repository.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/bottom_navigation_bar_controller.dart';

import 'modules/landing/landing_module.dart';
import 'shared/auth/repositories/auth_repository.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AuthRepository()),
    Bind.lazySingleton((i) => BottomNavigationBarController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(
      '/login',
      module: LoginModule(),
    ),
    ModuleRoute(
      '/',
      module: LandingModule(),
    ),
    ModuleRoute(
      '/splash',
      module: SplashModule(),
    ),
  ];
}
