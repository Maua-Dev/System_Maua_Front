import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/mural_divulgacao_controller.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/widgets/mural_divulgacao_card_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';

class MuralDivulgacaoPage extends StatefulWidget {
  MuralDivulgacaoPage({Key? key}) : super(key: key);

  @override
  _MuralDivulgacaoPageState createState() => _MuralDivulgacaoPageState();
}

class _MuralDivulgacaoPageState
    extends ModularState<MuralDivulgacaoPage, MuralDivulgacaoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          title: 'Mural de Divulgação',
          icon: Icons.language,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: GridView(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.1,
              ),
              shrinkWrap: true,
              children: [
                MuralDivulgacaoCardWidget(
                  icon: Icons.shopping_bag_outlined,
                  corContainer: Color(0xFF007FFF).withOpacity(0.2),
                  corContainerIcone: Color(0xFF007FFF),
                  titulo: 'Vendas de Materiais',
                  iconSize: 40,
                  textController: controller.informacaoVendasNaoLido,
                  onTap: () {},
                ),
                MuralDivulgacaoCardWidget(
                  icon: Icons.groups,
                  corContainer: Color(0xFFC1FF43).withOpacity(0.2),
                  corContainerIcone: Color(0xFFC1FF43),
                  titulo: 'Equipes Mauá',
                  iconSize: 40,
                  textController: controller.informacaoEquipesNaoLido,
                  onTap: () {},
                ),
                MuralDivulgacaoCardWidget(
                  icon: FontAwesome5.bullhorn,
                  corContainer: Color(0xFFFFA500).withOpacity(0.2),
                  corContainerIcone: Color(0xFFFFA500),
                  titulo: 'Centro Academico',
                  iconSize: 34,
                  textController: controller.informacaoCaNaoLido,
                  onTap: () {},
                ),
                MuralDivulgacaoCardWidget(
                  icon: FontAwesome5.briefcase,
                  corContainer: Color(0xFFFF2E00).withOpacity(0.2),
                  corContainerIcone: Color(0xFFFF2E00),
                  titulo: 'Estágio',
                  iconSize: 34,
                  textController: controller.informacaoEstagioNaoLido,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
