import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import '../../../../injection_container.dart';
import '../../dialogs/custom_alert_dialog_widget.dart';
import '../bottom_navigation_bar_controller.dart';
import 'icon_buttom_custom_widget.dart';

class ClosedBottomNavigationBar extends StatelessWidget {
  const ClosedBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controllerNavigationBar =
        serviceLocator<BottomNavigationBarController>();
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
                    Get.toNamed('/home');
                  }),
              IconButtonCustomWidget(
                  isClicked: controllerNavigationBar.currentIndex == 1,
                  icon: Icons.library_books,
                  onPressed: () {
                    controllerNavigationBar.alternatePage(1);
                    Get.toNamed('/subject');
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
                    Get.toNamed('/medias');
                  }),
              IconButtonCustomWidget(
                  icon: Icons.help_outline_outlined,
                  isClicked: false,
                  onPressed: () {
                    // Modular.to.navigate('/help');
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const CustomAlertDialogWidget(
                          title: 'Conteúdo indisponível!',
                          content: 'Aguarde novas atualizações.',
                        );
                      },
                    );
                  }),
            ],
          );
        }));
  }
}
