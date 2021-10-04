import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_estagio/mural_estagios_controller.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_estagio/widgets/estagios_card_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class MuralEstagiosPage extends StatefulWidget {
  MuralEstagiosPage({Key? key}) : super(key: key);

  @override
  _MuralEstagiosPageState createState() => _MuralEstagiosPageState();
}

class _MuralEstagiosPageState
    extends ModularState<MuralEstagiosPage, MuralEstagiosController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          title: 'Estágio',
          icon: FontAwesome5.briefcase,
        ),
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  'Programas de estágio',
                  style: AppTextStyles.bodyBold,
                ),
              ),
            ),
            Expanded(
              child: Observer(builder: (_) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.listaPanelEstagios.length,
                  itemBuilder: (context, index) => EstagiosCardWidget(
                    titulo:
                        controller.listaPanelEstagios[index].model.nomeEstagio,
                    data:
                        controller.listaPanelEstagios[index].model.dataEstagio,
                    descricao: controller
                        .listaPanelEstagios[index].model.descricaoEstagio,
                    isOpen: controller.listaPanelEstagios[index].isOpen,
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
