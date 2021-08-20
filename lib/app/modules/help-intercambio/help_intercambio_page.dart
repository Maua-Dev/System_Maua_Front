import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';

class HelpIntercambioPage extends StatefulWidget {
  @override
  _HelpIntercambioPageState createState() => _HelpIntercambioPageState();
}

class _HelpIntercambioPageState extends State<HelpIntercambioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "Intercambio",
        icon: Icons.airplanemode_active,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
