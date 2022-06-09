import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/home-aluno/widgets/app_bar_home_widget.dart';
import 'package:system_maua_front/app/modules/home-aluno/widgets/navigation_button_widget.dart';
import 'package:system_maua_front/app/modules/home-aluno/widgets/classes_of_day_card_widget.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'home_student_controller.dart';

class HomeStudentPage extends StatefulWidget {
  const HomeStudentPage({Key? key}) : super(key: key);

  @override
  _HomeStudentPageState createState() => _HomeStudentPageState();
}

class _HomeStudentPageState
    extends ModularState<HomeStudentPage, HomeStudentController> {
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
                    Modular.to.pushNamed(
                      '/configuracoes-usuario?nomeAluno=${controller.student.name}&raAluno=${controller.student.ra}&fotoALuno=https://avatars.githubusercontent.com/u/24724451?v=4',
                    );
                  },
                  user: controller.student.name,
                  ra: controller.student.ra,
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
