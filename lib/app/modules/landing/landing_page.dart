import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/bottom_navigation_bar_widget.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controllerNavigationBar = Modular.get<BottomNavigationBarController>();
    return SafeArea(
      child: Scaffold(
        body: RouterOutlet(),
        bottomNavigationBar: Observer(builder: (_) {
          return BottomNavigationBarWidget(
            isOpen: controllerNavigationBar.isOpen,
            onPressed: () {
              controllerNavigationBar.changeOpen();
            },
          );
        }),
      ),
    );
  }
}
