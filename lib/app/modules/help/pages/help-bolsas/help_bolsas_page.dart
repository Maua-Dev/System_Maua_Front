import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help/pages/help-bolsas/widgets/help_bolsas_card_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

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
                Text(
                  'Horário de atendimento: ',
                  style: AppTextStyles.bodyBold.copyWith(fontSize: 24),
                  textAlign: TextAlign.left,
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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                      children: [
                        Text(
                          ' OS FORMULÁRIOS DEVERÃO SER PREENCHIDOS ELETRONICAMENTE, ASSINADOS E JUNTAMENTE COM TODA A DOCUMENTAÇÃO DEVERÃO SER DIGITALIZADOS E ENCAMINHADOS PARA O E-MAIL: fmb@maua.br',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16
                          ),
                        ),
                        Text(
                          'NÃO É NECESSÁRIO RECONHECER FIRMA DAS ASSINATURAS NAS FICHAS',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16
                          ),
                        ),
                      ],
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      BolsasWidget(
                          titulo: 'Documentos',
                          info: '''
      • Requerimento
      • Ficha - Informaçoes de irmãos 
        ou filhos do aluno
      • Ficha - Pai do aluno
      • Ficha - Mae do aluno
      • Ficha conjuge do aluno
      • Ficha - fiador(a)
      • Ficha - conjuge do(a) fiador(a)
      ''',
                      ),
                      BolsasWidget(
                        titulo: 'Contatos', 
                        info: '''
• Roberta (11) 4239-3008
• roberta@maua.br
• Cristiane (11) 4239-3010
• cristiane.datovo@maua.br
• Fundo Mauá de Bolsas
• fmb@maua.br
  ''',
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
