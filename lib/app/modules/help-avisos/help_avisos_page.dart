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

class HelpAvisosPageState
    extends ModularState<HelpAvisosPage, HelpAvisosController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Avisos',
        icon: Icons.help_outline_outlined,
      ),
      body: Column(
        children: [
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
          Expanded(
            child: ListView.builder(
              itemCount: controller.avisos.length,
              itemBuilder: (context, index) => AvisosCard(
                data: controller.avisos[index].data,
                titulo: controller.avisos[index].titulo,
                descricao: controller.avisos[index].descricao,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
