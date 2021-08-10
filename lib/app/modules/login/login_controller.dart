import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/auth/auth_controller.dart';

part 'login_controller.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {
  final AuthController repository;

  _LoginController(this.repository);

  @observable
  bool isChecked = false;

  @action
  void setIsChecked(bool? value) {
    isChecked = value ?? false;
  }

  Future<void> login() async {
    await repository.loginWithEmail('fodac', 'coloca algo aq', isChecked);
  }
}
