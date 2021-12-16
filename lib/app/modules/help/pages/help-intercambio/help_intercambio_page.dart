import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/widgets/intercambio_card.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';

import 'enumarates/intercambio_enum.dart';

class HelpIntercambioPage extends StatefulWidget {
  @override
  _HelpIntercambioPageState createState() => _HelpIntercambioPageState();
}

class _HelpIntercambioPageState extends State<HelpIntercambioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Intercambio',
        icon: Icons.airplanemode_active,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => IntercambioCard(
                title: IntercambioEnum.values[index].titulo,
                onPressed: () => Modular.to
                    .pushNamed(IntercambioEnum.values[index].pushNamed),
              ),
              itemCount: IntercambioEnum.values.length,
            ),
          ),
          SizedBox(
            height: 9,
          )
        ],
      ),
    );
  }
}
