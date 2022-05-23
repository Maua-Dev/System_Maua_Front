import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/materias/materias_controller.dart';
import 'package:system_maua_front/app/modules/materias/widgets/materia_card_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

class MateriasPage extends StatefulWidget {
  MateriasPage({Key? key}) : super(key: key);

  @override
  _MateriasPageState createState() => _MateriasPageState();
}

class _MateriasPageState
    extends ModularState<MateriasPage, MateriasController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          title: 'Matérias',
          icon: Icons.library_books,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Observer(builder: (_) {
                return Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 16),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.materias.length,
                    itemBuilder: (context, index) {
                      return MateriaCardWidget(
                        nomeMateria: controller.materias[index].nome.name,
                        progresso:  controller.materias[index].progresso,
                      );
                    },
                  ),
                );
              }),
              SizedBox(height: 16,)
            ],
          ),
        ),
      ),
    );
  }
}
