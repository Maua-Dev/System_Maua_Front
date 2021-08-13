import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/materias-apresentacao/materias_apresentacao_controller.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';

class MateriasApresentacaoPage extends StatefulWidget {
  final String nomeMateria;
  MateriasApresentacaoPage({Key? key, required this.nomeMateria})
      : super(key: key);

  @override
  _MateriasApresentacaoPageState createState() =>
      _MateriasApresentacaoPageState();
}

class _MateriasApresentacaoPageState extends ModularState<
    MateriasApresentacaoPage, MateriasApresentacaoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          title: widget.nomeMateria,
          icon: Icons.library_books,
        ),
        body: Observer(builder: (_) {
          return Column(
            children: [
              Text('Introdução'),
              Text(controller.materia.introducao),
              Text('Plano de Ensino')
            ],
          );
        }),
      ),
    );
  }
}
