import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  @observable
  int counter = 0;

  Future<void> increment() async {
    counter = counter + 1;
  }

  @observable
  bool isOpen = false;

  @action
  Future<void> trocaOpen() async {
    isOpen = !isOpen;
  }
}
