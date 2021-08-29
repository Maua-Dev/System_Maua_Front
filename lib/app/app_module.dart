import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/medias/widgets/filtro_ano/filtro_controller.dart';
import 'package:system_maua_front/app/modules/login/login_module.dart';
import 'package:system_maua_front/app/modules/splash/splash_module.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'modules/auth/auth_guard.dart';
import 'modules/auth/auth_module.dart';
import 'package:system_maua_front/app/shared/components/filter_period/filter_period_controller.dart';
import 'modules/landing/landing_module.dart';

class AppModule extends Module {
  @override
  final List<Module> imports = [AuthModule()];
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => BottomNavigationBarController()),
    Bind.lazySingleton((i) => FilterPeriodController()),
    Bind.lazySingleton((i) => FiltroController()),
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
      guards: [AuthGuard()],
      guardedRoute: '/login',
    ),
    ModuleRoute(
      '/splash',
      module: SplashModule(),
    ),
  ];
}
