import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help-avisos/help_avisos_controller.dart';
import 'package:flutter/material.dart';
import 'package:system_maua_front/app/modules/help-avisos/widgets/aviso_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class HelpAvisosPage extends StatefulWidget {
  final String title;
  const HelpAvisosPage({Key? key, this.title = 'HelpAvisosPage'})
      : super(key: key);
  @override
  HelpAvisosPageState createState() => HelpAvisosPageState();
}

class HelpAvisosPageState extends State<HelpAvisosPage> {
  final HelpAvisosController store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Avisos',
        icon: Icons.help_outline_outlined,
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.warning_amber_outlined,
                size: 150,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Avisos Gerais da reitoria',
                style: AppTextStyles.lightBody,
              ),
            ),
          ),
          AvisosCard(
            data: '31/08',
            titulo: 'Provas',
            descricao:
                'Gostariamos de dizer que as datas de provas foram adiadas por conta do covid, devido a isso tudo ocorrera remotamente',
          ),
          AvisosCard(
            data: '32/18',
            titulo: 'Provaas subs p4',
            descricao:
                'Gostariamos de dizer que as datas de provas foram adiadas por conta do covid, devido a isso tudo ocorrera remotamente',
          )
        ],
      ),
    );
  }
}
