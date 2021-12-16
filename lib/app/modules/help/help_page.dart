import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:system_maua_front/app/modules/help/widgets/help_card.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/bottom_navigation_bar_controller.dart';

import 'enumerates/help_enum.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({
    Key? key,
  }) : super(key: key);
  @override
  _HelpAlunoPageState createState() => _HelpAlunoPageState();
}

var controllerNavigationBar = Modular.get<BottomNavigationBarController>();

class _HelpAlunoPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          title: 'Help',
          icon: Icons.help_outline_outlined,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => HelpCard(
                    title: HelpEnum.values[index].titulo,
                    onPressed: () =>
                        Modular.to.pushNamed(HelpEnum.values[index].pushNamed)),
                itemCount: HelpEnum.values.length,
              ),
            ),
            SizedBox(
              height: 16,
            )
          ],
        ));
  }
}
