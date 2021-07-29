import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help-avisos/help_avisos_controller.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
