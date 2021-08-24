import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help/pages/help-softwares/widget/softwares_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'help_softwares_controller.dart';

class HelpSoftwaresPage extends StatefulWidget {
  @override
  _HelpSoftwaresPageState createState() => _HelpSoftwaresPageState();
}

class _HelpSoftwaresPageState
    extends ModularState<HelpSoftwaresPage, HelpSoftwaresController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Softwares',
        icon: Icons.computer,
      ),
      body: Expanded(child: Observer(builder: (_) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: controller.softwaresAction.length,
          itemBuilder: (context, index) => SofwaresCard(
            titulo: controller.softwaresAction[index].softwares.titulo,
            descricao: controller.softwaresAction[index].softwares.descricao,
            isOpen: controller.softwaresAction[index].isOpen,
            onPressed: () {
              controller.trocaOpen(index);
            },
          ),
        );
      })),
    );
  }
}
