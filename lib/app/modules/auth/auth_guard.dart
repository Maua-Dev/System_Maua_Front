import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/app_module.dart';

import 'auth_controller.dart';

class AuthGuard implements RouteGuard {
  @override
  Future<bool> canActivate(String path, ModularRoute router) async {
    await Modular.isModuleReady<AppModule>();
    var authController = Modular.get<AuthController>();
    if (!authController.isLogged) {
      await authController.refreshToken();
    }
    return authController.isLogged;
  }

  @override
  String? get guardedRoute => null;
}
