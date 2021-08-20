import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

import 'enumerate/requerimento_enum.dart';
import 'help_bolsas_controller.dart';

class HelpBolsasPage extends StatefulWidget {
  @override
  _HelpBolsasPageState createState() => _HelpBolsasPageState();
}

class _HelpBolsasPageState
    extends ModularState<HelpBolsasPage, HelpBolsasController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
          title: 'Bolsas de Estudo', icon: Icons.help_outline_outlined),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      Text(
                        ' OS FORMULÁRIOS DEVERÃO SER PREENCHIDOS ELETRONICAMENTE, ASSINADOS E JUNTAMENTE COM TODA A DOCUMENTAÇÃO DEVERÃO SER DIGITALIZADOS E ENCAMINHADOS PARA O E-MAIL: fmb@maua.br',
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'NÃO É NECESSÁRIO RECONHECER FIRMA DAS ASSINATURAS NAS FICHAS',
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Observer(
                    builder: (context) => ExpansionPanelList(
                        animationDuration: Duration(seconds: 1),
                        elevation: 8,
                        dividerColor: Colors.transparent,
                        expandedHeaderPadding:
                            EdgeInsets.symmetric(vertical: 10),
                        children: [
                          ExpansionPanel(
                            canTapOnHeader: true,
                            headerBuilder: (context, isOpen) => Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
                              child: Text(
                                'Documentos',
                                textAlign: TextAlign.start,
                                style: AppTextStyles.bodyBold,
                              ),
                            ),
                            body: Container(
                              height: 210,
                              child: ListView.builder(
                                itemBuilder: (context, index) => Text(
                                  RequerimentoEnum.values[index].descricao,
                                  textAlign: TextAlign.center,
                                ),
                                itemCount: RequerimentoEnum.values.length,
                              ),
                            ),
                            isExpanded: controller.isOpen[0],
                          ),
                          ExpansionPanel(
                            canTapOnHeader: true,
                            headerBuilder: (context, isOpen) => Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
                              child: Text(
                                'Contatos',
                                textAlign: TextAlign.start,
                                style: AppTextStyles.bodyBold,
                              ),
                            ),
                            body: Column(
                              children: [
                                Text('Roberta (11) 4239-3008',
                                    textAlign: TextAlign.center),
                                Text('roberta@maua.br',
                                    textAlign: TextAlign.center),
                                Text('Cristiane (11) 4239-3010 ',
                                    textAlign: TextAlign.center),
                                Text('cristiane.datovo@maua.br',
                                    textAlign: TextAlign.center),
                                Text('Fundo Mauá de Bolsas ',
                                    textAlign: TextAlign.center),
                                Text('fmb@maua.br',
                                    textAlign: TextAlign.center),
                                SizedBox(
                                  height: 8,
                                ),
                              ],
                            ),
                            isExpanded: controller.isOpen[1],
                          )
                        ],
                        expansionCallback: (i, isOpen) {
                          controller.trocaOpen(i);
                        }),
                  ),
                ),
                Text(
                  'Horário de atendimento: ',
                  style: AppTextStyles.bodyBold.copyWith(fontSize: 24),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.095,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    boxShadow: [AppColors.shadow],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('2ª à 6ª feira', textAlign: TextAlign.center),
                      Text('das 10h30 às 22h30', textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}