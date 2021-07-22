import 'package:mobx/mobx.dart';

part 'bottom_navigation_bar_controller.g.dart';

class BottomNavigationBarController = BottomNavigationBarControllerBase
    with _$BottomNavigationBarController;

abstract class BottomNavigationBarControllerBase with Store {
  @observable
  bool isOpen = false;

  @action
  Future<void> trocaOpen() async {
    isOpen = !isOpen;
  }
}
