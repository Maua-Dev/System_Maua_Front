import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:system_maua_front/app/modules/help-aluno/widgets/help_card.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/bottom_navigation_bar_controller.dart';

class HelpAlunoPage extends StatefulWidget {
  const HelpAlunoPage({
    Key? key,
  }) : super(key: key);
  @override
  _HelpAlunoPageState createState() => _HelpAlunoPageState();
}

var controllerNavigationBar = Modular.get<BottomNavigationBarController>();

class _HelpAlunoPageState extends State<HelpAlunoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Help',
        icon: Icons.help_outline_outlined,
      ),
      body: ListView(
        children: [
          HelpCard(
              onPressed: () {
                Modular.to.pushNamed('/avisos');
              },
              title: 'Avisos'),
          HelpCard(onPressed: () {}, title: 'Video tutorial'),
          HelpCard(onPressed: () {}, title: 'Softwares Disponiveis'),
          HelpCard(onPressed: () {}, title: 'Bolsas de Estudo'),
          HelpCard(onPressed: () {}, title: 'Intercambio'),
          HelpCard(onPressed: () {}, title: 'Estágio'),
          HelpCard(onPressed: () {}, title: 'Mapa Digital'),
          HelpCard(onPressed: () {}, title: 'FAQ'),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
