import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';

class HelpSoftwaresPage extends StatefulWidget {
  @override
  _HelpSoftwaresPageState createState() => _HelpSoftwaresPageState();
}

class _HelpSoftwaresPageState extends State<HelpSoftwaresPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Softwares',
        icon: Icons.computer,
      ),
    );
  }
}
