import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_equipes/mural_equipes_controller.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';

import 'widgets/equipes_card_widget.dart';

class MuralEquipesPage extends StatefulWidget {
  MuralEquipesPage({Key? key}) : super(key: key);

  @override
  _MuralEquipesPageState createState() => _MuralEquipesPageState();
}

class _MuralEquipesPageState
    extends ModularState<MuralEquipesPage, MuralEquipesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          title: 'Equipes Mauá',
          icon: Icons.group,
        ),
        body: Column(
          children: [
            Expanded(
              child: Observer(builder: (_) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.listaPanelEquipes.length,
                  itemBuilder: (context, index) => EquipesCardWidget(
                    titulo:
                        controller.listaPanelEquipes[index].model.nomeEquipe,
                    descricao: controller
                        .listaPanelEquipes[index].model.descricaoEquipe,
                    contato: controller.listaEquipes[index].contatoResponsavel,
                    isOpen: controller.listaPanelEquipes[index].isOpen,
                    onPressed: () {
                      controller.trocaOpen(index);
                    },
                  ),
                );
              }),
            ),
            SizedBox(
              height: 32,
            )
          ],
        ));
  }
}
