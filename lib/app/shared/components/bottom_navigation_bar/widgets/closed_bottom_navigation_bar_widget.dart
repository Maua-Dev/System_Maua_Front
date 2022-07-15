import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../dialogs/custom_alert_dialog_widget.dart';
import '../bottom_navigation_bar_controller.dart';
import 'icon_buttom_custom_widget.dart';

class ClosedBottomNavigationBar extends StatelessWidget {
  const ClosedBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controllerNavigationBar = Modular.get<BottomNavigationBarController>();
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Observer(builder: (_) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButtonCustomWidget(
                  isClicked: controllerNavigationBar.currentIndex == 0,
                  icon: Icons.home,
                  onPressed: () {
                    controllerNavigationBar.alternatePage(0);
                    Modular.to.navigate('/home');
                  }),
              IconButtonCustomWidget(
                  isClicked: controllerNavigationBar.currentIndex == 1,
                  icon: Icons.library_books,
                  onPressed: () {
                    controllerNavigationBar.alternatePage(1);
                    Modular.to.navigate('/subject');
                  }),
              IconButtonCustomWidget(
                  isClicked: false,
                  size: 48,
                  icon: controllerNavigationBar.isOpen
                      ? Icons.keyboard_arrow_down
                      : Icons.keyboard_arrow_up,
                  onPressed: () {
                    controllerNavigationBar.changeOpen();
                  }),
              IconButtonCustomWidget(
                  isClicked: controllerNavigationBar.currentIndex == 3,
                  icon: Icons.library_add_check,
                  onPressed: () {
                    controllerNavigationBar.alternatePage(3);
                    Modular.to.navigate('/medias');
                  }),
              IconButtonCustomWidget(
                  icon: Icons.help_outline_outlined,
                  isClicked: false,
                  onPressed: () {
                    Modular.to.navigate('/help');
                  }),
            ],
          );
        }));
  }
}
