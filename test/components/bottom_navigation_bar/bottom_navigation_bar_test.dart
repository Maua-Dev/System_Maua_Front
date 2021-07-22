import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/bottom_navigation_bar_controller.dart';

void main() {
  late BottomNavigationBarController controllerNavigationBar;

  setUpAll(() {
    controllerNavigationBar = BottomNavigationBarController();
  });
  test('[TEST] - Injeção do BottomNavigationBarController', () {
    expect(
        controllerNavigationBar, isInstanceOf<BottomNavigationBarController>());
  });

  test('[TEST] - trocaOpen', () {
    controllerNavigationBar.trocaOpen();
    expect(controllerNavigationBar.isOpen, true);
  });
}
