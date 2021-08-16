import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help-bolsas/help_bolsas_controller.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

class BolsasPage extends StatefulWidget {
  @override
  _BolsasPageState createState() => _BolsasPageState();
}

class _BolsasPageState extends ModularState<BolsasPage, BolsasController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkBlue,
    );
  }
}
