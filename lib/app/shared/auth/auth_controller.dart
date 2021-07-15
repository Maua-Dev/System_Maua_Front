import 'package:mobx/mobx.dart';

part 'auth_store.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
