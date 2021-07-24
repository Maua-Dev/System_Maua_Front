import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help-aluno/help_aluno_controller.dart';
import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/widgets/bottom_navigation_bar_widget.dart';
import 'package:system_maua_front/app/shared/components/floating_action_button_custom/floating_action_button_custom_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class HelpAlunoPage extends StatefulWidget {
  const HelpAlunoPage({
    Key? key,
  }) : super(key: key);
  @override
  _HelpAlunoPageState createState() => _HelpAlunoPageState();
}

var controllerNavigationBar = Modular.get<BottomNavigationBarController>();

class _HelpAlunoPageState
    extends ModularState<HelpAlunoPage, HelpAlunoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.help,
                color: AppColors.white,
              ),
              onPressed: () {})
        ],
        title: Text(
          'Help',
          style: AppTextStyles.appBarTitle,
        ),
      ),
      body: Column(
        children: <Widget>[Text('datasdsaas')],
      ),
      bottomNavigationBar: Observer(builder: (_) {
        return BottomNavigationBarWidget(
          isOpen: controllerNavigationBar.isOpen,
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButtonCustomWidget(
        key: ValueKey('actionButton'),
        onPressed: () {
          controllerNavigationBar.trocaOpen();
        },
      ),
    );
  }
}
