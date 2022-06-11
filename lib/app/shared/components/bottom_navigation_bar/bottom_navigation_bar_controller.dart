import 'package:mobx/mobx.dart';

part 'bottom_navigation_bar_controller.g.dart';

class BottomNavigationBarController = BottomNavigationBarControllerBase
    with _$BottomNavigationBarController;

abstract class BottomNavigationBarControllerBase with Store {
  @observable
  bool isOpen = false;

  @observable
  int currentIndex = 0;

  @action
  Future<void> alternatePage(int index) async {
    currentIndex = index;
  }

  @action
  Future<void> changeOpen() async {
    isOpen = !isOpen;
  }
}
