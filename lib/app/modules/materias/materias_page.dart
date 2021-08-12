import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/materias/materias_controller.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';

class MateriasPage extends StatefulWidget {
  MateriasPage({Key? key}) : super(key: key);

  @override
  _MateriasPageState createState() => _MateriasPageState();
}

class _MateriasPageState
    extends ModularState<MateriasPage, MateriasController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Matérias',
        icon: Icons.library_books,
      ),
    );
  }
}
