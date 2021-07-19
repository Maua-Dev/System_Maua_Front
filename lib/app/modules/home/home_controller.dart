import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  @observable
  bool isOpen = false;

  @action
  Future<void> trocaOpen() async {
    isOpen = !isOpen;
  }
}
