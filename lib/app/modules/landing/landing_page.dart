import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/bottom_navigation_bar_widget.dart';

import '../../injection_container.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controllerNavigationBar =
        serviceLocator<BottomNavigationBarController>();
    return SafeArea(
      child: Scaffold(
        body: GetRouterOutlet(
          initialRoute: '/home',
        ),
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
