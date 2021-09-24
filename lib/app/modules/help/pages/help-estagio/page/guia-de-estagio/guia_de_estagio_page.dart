import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/page/guia-de-estagio/guia_de_estagio_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/help-softwares/widget/softwares_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';

class GuiaEstagioPage extends StatefulWidget {
  GuiaEstagioPage({Key? key}) : super(key: key);

  @override
  _GuiaEstagioPageState createState() => _GuiaEstagioPageState();
}

class _GuiaEstagioPageState
    extends ModularState<GuiaEstagioPage, GuiaEstagioController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Guia Estágio',
        icon: Icons.help_outline_outlined,
      ),
      body: Column(
        children: [
          Expanded(
            child: Observer(builder: (_) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: controller.listaPanelGuiaEstagio.length,
                itemBuilder: (context, index) => SofwaresCard(
                  titulo: controller.listaPanelGuiaEstagio[index].guiaEstagio.nomePasso,
                  descricao: controller
                      .listaPanelGuiaEstagio[index].guiaEstagio.descricaoPasso,
                  isOpen: controller.listaPanelGuiaEstagio[index].isOpen,
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
      ),
    );
  }
}