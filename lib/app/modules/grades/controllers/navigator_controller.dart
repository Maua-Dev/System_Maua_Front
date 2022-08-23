import 'package:mobx/mobx.dart';

part 'navigator_controller.g.dart';

class NavigatorController = NavigatorControllerBase with _$NavigatorController;

abstract class NavigatorControllerBase with Store {
  @observable
  int indexToShow = 2;

  @action
  Future<void> toggleIndex(int index) async {
    indexToShow = index;
  }
}
