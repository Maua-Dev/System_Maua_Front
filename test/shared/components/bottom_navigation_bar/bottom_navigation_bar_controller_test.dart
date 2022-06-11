import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/bottom_navigation_bar_controller.dart';

void main() {
  late BottomNavigationBarController controllerNavigationBar;

  setUpAll(() {
    controllerNavigationBar = BottomNavigationBarController();
  });

  test('[TEST] - alternatePage', () {
    controllerNavigationBar.alternatePage(1);
    expect(controllerNavigationBar.currentIndex, 1);
  });

  test('[TEST] - changeOpen', () {
    controllerNavigationBar.changeOpen();
    expect(controllerNavigationBar.isOpen, true);
  });
}
