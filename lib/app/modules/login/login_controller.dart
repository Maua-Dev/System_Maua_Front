import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/auth/auth_controller.dart';
import 'package:system_maua_front/app/modules/auth/errors/errors.dart';

part 'login_controller.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {
  final AuthController authController;

  _LoginController(this.authController) {
    openLoginModal();
  }

  @observable
  bool passwordVisibility = true;

  @observable
  String errors = '';

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  bool loginModalIsOpen = false;

  @action
  void openLoginModal() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      loginModalIsOpen = true;
    });
  }

  @action
  void setEmail(String value) {
    email = value;
  }

  @action
  void setPassword(String value) {
    password = value;
  }

  @action
  Future<void> login() async {
    try {
      await authController.loginWithEmail(email, password, true);
      if (authController.isLogged) {
        Modular.to.navigate('/home');
      }
    } on Failure catch (e) {
      errors = e.message;
    }
  }

  @action
  void changePasswordVisibility() {
    passwordVisibility = !passwordVisibility;
  }
}
