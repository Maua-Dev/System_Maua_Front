import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help-avisos/help_avisos_controller.dart';
import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
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
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
