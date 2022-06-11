import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/home/widgets/app_bar_home_widget.dart';
import 'package:system_maua_front/app/modules/home/widgets/classes_of_day_card_widget.dart';
import 'package:system_maua_front/app/modules/home/widgets/navigation_button_widget.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  var controllerNavigationBar = Modular.get<BottomNavigationBarController>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Observer(builder: (_) {
                return AppBarHomeWidget(
                  onTap: () {
                    Modular.to.pushNamed('/configuracoes-usuario', arguments: [
                      controller.user.name,
                      controller.user.ra,
                      'https://avatars.githubusercontent.com/u/24724451?v=4'
                    ]);
                  },
                  user: controller.user.name,
                  ra: controller.user.ra,
                );
              }),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.18,
              ),
              Observer(builder: (context) {
                return ClassesOfDayWidget(
                  classesOfDay: controller.classesOfDay,
                  isLoading: controller.isLoading,
                );
              }),
              NavigationButtonWidget(
                title: 'Entregas da semana',
                icon: Icons.playlist_add_check,
              ),
              NavigationButtonWidget(
                title: 'Mural de avisos',
                icon: Icons.info,
              ),
            ],
          )
        ],
      ),
    );
  }
}
