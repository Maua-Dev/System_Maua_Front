import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/notas-aluno/notas_aluno_controller.dart';
import 'package:flutter/material.dart';

class NotasAlunoPage extends StatefulWidget {
  final String title;
  const NotasAlunoPage({Key? key, this.title = 'NotasAlunoPage'})
      : super(key: key);
  @override
  NotasAlunoPageState createState() => NotasAlunoPageState();
}

class NotasAlunoPageState
    extends ModularState<NotasAlunoPage, NotasAlunoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
