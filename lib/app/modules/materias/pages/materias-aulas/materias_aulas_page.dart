import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';

import 'materias_aulas_controller.dart';

class MateriasAulasPage extends StatefulWidget {
  MateriasAulasPage({
    Key? key,
  }) : super(key: key);

  @override
  _MateriasAulasPageState createState() => _MateriasAulasPageState();
}

class _MateriasAulasPageState
    extends ModularState<MateriasAulasPage, MateriasAulasController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          title: 'Matérias',
        ),
        body: Container(
          color: Colors.red,
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
