import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/materias-aulas/materias_aulas_controller.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';

class MateriasAulasPage extends StatefulWidget {
  final String nomeMateria;
  MateriasAulasPage({Key? key, required this.nomeMateria}) : super(key: key);

  @override
  _MateriasAulasPageState createState() => _MateriasAulasPageState();
}

class _MateriasAulasPageState
    extends ModularState<MateriasAulasPage, MateriasAulasController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: widget.nomeMateria,
      ),
      body: Container(
        color: Colors.red,
        height: 100,
        width: 100,
      ),
    );
  }
}
