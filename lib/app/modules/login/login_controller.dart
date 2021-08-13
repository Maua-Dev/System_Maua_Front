import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/auth/auth_controller.dart';

part 'login_controller.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {
  final AuthController authController;

  _LoginController(this.authController);

  @observable
  bool isChecked = false;

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  bool isLogged = false;

  @action
  void setIsChecked(bool? value) {
    isChecked = value ?? false;
  }

  @action
  void setEmail(String value) {
    email = value;
  }

  @action
  void setPassword(String value) {
    password = value;
  }

  Future<void> login() async {
    await authController.loginWithEmail(email, password, isChecked);
    if (authController.isLogged) {
      Modular.to.navigate('/home');
    }
  }
}
