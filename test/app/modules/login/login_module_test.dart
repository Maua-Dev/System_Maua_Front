import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/auth/auth_controller.dart';
import 'package:system_maua_front/app/modules/auth/auth_module.dart';
import 'package:system_maua_front/app/modules/login/login_controller.dart';
import 'package:system_maua_front/app/modules/login/login_module.dart';

import 'login_controller_test.mocks.dart';

void main() {
  initModules([
    LoginModule(),
    AuthModule()
  ], replaceBinds: [
    Bind.lazySingleton<AuthController>((i) => MockAuthController())
  ]);

  test('[TEST] - LoginController Injection', () {
    var loginController = Modular.get<LoginController>();
    expect(loginController.authController, isInstanceOf<AuthController>());
  });
}
