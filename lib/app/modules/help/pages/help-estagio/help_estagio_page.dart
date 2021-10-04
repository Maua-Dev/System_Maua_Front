import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/help_estagio_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/widgets/help_estagio_card.dart';
import 'package:system_maua_front/app/modules/help/widgets/help_panel_card_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/enumerates/arquivos_enum.dart';
import 'package:system_maua_front/app/shared/models/arquivos_model.dart';

class HelpEstagioPage extends StatefulWidget {
  HelpEstagioPage({Key? key}) : super(key: key);

  @override
  _HelpEstagioPageState createState() => _HelpEstagioPageState();
}

class _HelpEstagioPageState
    extends ModularState<HelpEstagioPage, HelpEstagioController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Estágio',
        icon: Icons.help_outline_outlined,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: HelpEstagioCard(
                  onTap: () {
                    Modular.to.pushNamed('/help/estagio/guiaestagio');
                  },
                )),
            Center(
              child: Text(
                'Arquivos',
              ),
            ),
            Observer(builder: (_) {
              return ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.listaPanelEstagio.length,
                itemBuilder: (context, index) => HelpPanelCard(
                  titulo:
                      controller.listaPanelEstagio[index].estagio.tituloPanel,
                  descricaoIcon: controller.listaPanelEstagio[index].estagio
                      .nomearquivo!.arquivosEnum.iconeArquivo,
                  descricaoNome: controller.listaPanelEstagio[index].estagio
                      .nomearquivo!.tituloArquivo,
                  isOpen: controller.listaPanelEstagio[index].isOpen,
                  onPressed: () {
                    controller.trocaOpen(index);
                  },
                ),
              );
            }),
            SizedBox(
              height: 32,
            )
          ],
        ),
      ),
    );
  }
}
