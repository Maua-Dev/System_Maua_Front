import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help-bolsas/help_bolsas_controller.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

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
                  child: Text(
                    'OS FORMULÁRIOS DEVERÃO SER PREENCHIDOS ELETRONICAMENTE, ASSINADOS E JUNTAMENTE COM TODA A DOCUMENTAÇÃO DEVERÃO SER DIGITALIZADOS E ENCAMINHADOS PARA O E-MAIL: fmb@maua.br'
                    'NÃO É NECESSÁRIO RECONHECER FIRMA DAS ASSINATURAS NAS FICHAS,',
                    style: AppTextStyles.lightBody,
                    textAlign: TextAlign.justify,
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
                            body: Text(
                              '• Requerimento'
                              '• Ficha - Informaçoes de irmaos ou filhos do aluno\n'
                              '• Ficha - aluno\n'
                              '• Ficha -Pai do aluno\n'
                              '• Ficha - Mae do aluno\n'
                              '• Ficha conjuge do aluno\n'
                              '• Fichar - fiador(a)\n'
                              '• Ficha - conjuge do(a) fiador(a)\n',
                              style: AppTextStyles.body.copyWith(fontSize: 16),
                              textAlign: TextAlign.justify,
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
                            body: Text(
                              'Roberta (11) 4239-3008 \n roberta@maua.br \n\n'
                              'Cristiane (11) 4239-3010 \n cristiane.datovo@maua.br\n\n'
                              'Fundo Mauá de Bolsas  \n fmb@maua.br\n',
                              style: AppTextStyles.body.copyWith(fontSize: 16),
                              textAlign: TextAlign.center,
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
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    boxShadow: [AppColors.shadow],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      ' 2ª à 6ª feira\n'
                      'das 10h30 às 22h30',
                      style: AppTextStyles.lightBody,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
