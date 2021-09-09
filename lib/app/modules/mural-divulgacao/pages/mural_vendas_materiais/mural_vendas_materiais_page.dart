import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';

class MuralVendasMateriaisPage extends StatefulWidget {
  MuralVendasMateriaisPage({Key? key}) : super(key: key);

  @override
  _MuralVendasMateriaisPageState createState() => _MuralVendasMateriaisPageState();
}

class _MuralVendasMateriaisPageState extends State<MuralVendasMateriaisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Venda de materiais',
        icon: Icons.shop_2
      ),
    );
  }
}