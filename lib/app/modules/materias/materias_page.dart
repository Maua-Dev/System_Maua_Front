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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: Text(
                'Matérias',
                style: TextStyle(color: AppColors.strongLetter, fontSize: 24),
              ),
            ),
            Observer(builder: (_) {
              return Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 16),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: controller.materias.length,
                    itemBuilder: (context, index) {
                      return MateriaCardWidget(
                        nomeMateria: controller.materias[index].nome.name,
                        listaFotosProfessores:
                            controller.getFotosProfessores(index),
                        fotoMateria: controller.materias[index].foto,
                      );
                    },
                  ),
                ),
              );
            }),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'PAES',
                style: TextStyle(color: AppColors.strongLetter, fontSize: 24),
              ),
            ),
            Observer(builder: (_) {
              return Padding(
                padding: const EdgeInsets.only(
                  top: 12,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: controller.materias.length,
                    itemBuilder: (context, index) {
                      return MateriaCardWidget(
                        nomeMateria: controller.materias[index].nome.name,
                        listaFotosProfessores:
                            controller.getFotosProfessores(index),
                        fotoMateria: controller.materias[index].foto,
                      );
                    },
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
