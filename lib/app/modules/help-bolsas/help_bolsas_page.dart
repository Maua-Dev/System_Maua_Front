import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help-bolsas/help_bolsas_controller.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class BolsasPage extends StatefulWidget {
  @override
  _BolsasPageState createState() => _BolsasPageState();
}

class _BolsasPageState extends ModularState<BolsasPage, BolsasController> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        AppBarWidget(
            title: 'Bolsas de Estudo', icon: Icons.help_outline_outlined),
        Text(
          'OS FORMULÁRIOS DEVERÃO SER PREENCHIDOS ELETRONICAMENTE, ASSINADOS E JUNTAMENTE COM TODA A DOCUMENTAÇÃO DEVERÃO SER DIGITALIZADOS E ENCAMINHADOS PARA O\n E-MAIL: fmb@maua.br'
          '\n \n NÃO É NECESSÁRIO RECONHECER FIRMA DAS ASSINATURAS NAS FICHAS,',
          style: AppTextStyles.lightBody,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ExpansionPanelList(
              animationDuration: Duration(seconds: 1),
              elevation: 4,
              expandedHeaderPadding: EdgeInsets.symmetric(horizontal: 20),
              children: [
                ExpansionPanel(
                  canTapOnHeader: true,
                  headerBuilder: (context, isOpen) => Text("Documentos"),
                  body: Text('Requerimento'
                      'Ficha - Informaçoes de irmaos ou filhos do aluno'
                      'Ficha - aluno'
                      'Ficha -Pai do aluno'
                      'Ficha - Mae do aluno'
                      'Ficha conjuge do aluno'
                      'Fichar - fiador(a)'
                      'Ficha - conjuge do(a) fiador(a)'),
                  // isExpanded: _isOpen[0],
                ),
                ExpansionPanel(
                  canTapOnHeader: true,
                  headerBuilder: (context, isOpen) => Text("Contatos"),
                  body: Text('Roberta (11) 4239-3008 \n roberta@maua.br \n'
                      'Cristiane (11) 4239-3010 \n cristiane.datovo@maua.br\n'
                      'Fundo Mauá de Bolsas  \n fmb@maua.br\n'),
                  // isExpanded: _isOpen[0],
                )
              ],
              expansionCallback: (i, isOpen) => setState(() {
                    // _isOpen[i] = !isOpen;
                  })),
        ),
        Text(''),
        Container()
      ]),
    ]);
  }
}
