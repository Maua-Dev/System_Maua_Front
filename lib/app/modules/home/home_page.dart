import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import 'package:system_maua_front/app/shared/components/floating_action_button_custom/floating_action_button_custom_widget.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Observer(builder: (_) {
        return BottomNavigationBarWidget(
          isOpen: controller.isOpen,
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Observer(builder: (_) {
        return FloatingActionButtonCustomWidget(
          onPressed: () {
            controller.trocaOpen();
          },
        );
      }),
    );
  }
}
