import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/oportunidades_abertas/controller/oportunidade_controller.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/components/faq_card/faqcard_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class OportunidadePage extends StatefulWidget {
  OportunidadePage({Key? key}) : super(key: key);

  @override
  _OportunidadePageState createState() => _OportunidadePageState();
}

class _OportunidadePageState
    extends ModularState<OportunidadePage, OportunidadeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Oportunidades Abertas',
        icon: Icons.airplanemode_active,
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Oportunidades',
                style: AppTextStyles.lightBody,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: Observer(builder: (_) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: controller.universidadeAction.length,
                itemBuilder: (context, index) => FaqCard(
                  titulo:
                      controller.universidadeAction[index].universidade.nome,
                  descricao: controller
                      .universidadeAction[index].universidade.descricao,
                  isOpen: controller.universidadeAction[index].isOpen,
                  onPressed: () {
                    controller.trocaOpen(index);
                  },
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
