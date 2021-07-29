import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

class MuralDivulgacaoPage extends StatefulWidget {
  MuralDivulgacaoPage({Key? key}) : super(key: key);

  @override
  _MuralDivulgacaoPageState createState() => _MuralDivulgacaoPageState();
}

class _MuralDivulgacaoPageState extends State<MuralDivulgacaoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          title: 'Mural de Divulgação',
          icon: Icons.language,
        ),
        body: SingleChildScrollView(
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 8,
              childAspectRatio: 2,
            ),
            shrinkWrap: true,
            children: [],
          ),
        ),
      ),
    );
  }
}
