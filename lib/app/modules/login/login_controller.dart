import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginController = _LoginStoreController with _$LoginController;

abstract class _LoginStoreController with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
