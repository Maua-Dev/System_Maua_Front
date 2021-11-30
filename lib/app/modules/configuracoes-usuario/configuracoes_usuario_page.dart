import 'package:flutter/material.dart';

class ConfiguracoesUsuarioPage extends StatefulWidget {
  final String nomeAluno;
  final String raAluno;
  final String? fotoALuno;
  const ConfiguracoesUsuarioPage(
      {Key? key,
      required this.nomeAluno,
      required this.raAluno,
      this.fotoALuno})
      : super(key: key);

  @override
  _ConfiguracoesUsuarioPageState createState() =>
      _ConfiguracoesUsuarioPageState();
}

class _ConfiguracoesUsuarioPageState extends State<ConfiguracoesUsuarioPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
