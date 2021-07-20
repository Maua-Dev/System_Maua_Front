import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/shared/components/app_bar_home/app_bar_home_widget.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import 'package:system_maua_front/app/shared/components/floating_action_button_custom/floating_action_button_custom_widget.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';

import 'home_aluno_controller.dart';

class HomeAlunoPage extends StatefulWidget {
  const HomeAlunoPage({Key? key}) : super(key: key);

  @override
  _HomeAlunoPageState createState() => _HomeAlunoPageState();
}

class _HomeAlunoPageState
    extends ModularState<HomeAlunoPage, HomeAlunoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHomeWidget(
        usuario: controller.aluno.nome,
        ra: controller.aluno.ra,
        materia: controller.aula.tipoMateriaEnum?.name ?? '',
        duracao: controller.aula.duracao,
        local: controller.aula.local,
      ),
      bottomNavigationBar: Observer(builder: (_) {
        return BottomNavigationBarWidget(
          isOpen: controller.isOpen,
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButtonCustomWidget(
        onPressed: () {
          controller.trocaOpen();
        },
      ),
    );
  }
}
