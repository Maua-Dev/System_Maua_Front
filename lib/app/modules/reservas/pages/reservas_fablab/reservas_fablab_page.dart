import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas_fablab/enumerates/fablab_enum.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas_fablab/reservas_fablab_controller.dart';
import 'package:system_maua_front/app/modules/reservas/widgets/reservas_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';

class ReservasFablabPage extends StatefulWidget {
  ReservasFablabPage({Key? key}) : super(key: key);

  @override
  _ReservasFablabPageState createState() => _ReservasFablabPageState();
}

class _ReservasFablabPageState
    extends ModularState<ReservasFablabPage, ReservasFablabController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Reservas',
        icon: Icons.calendar_today_rounded,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                'O que deseja usar no FabLab?',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Observer(builder: (_) {
              return ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.listaFablab.length,
                itemBuilder: (context, index) {
                  return ReservasCard(
                    onTap: () {},
                    titulo: FablabEnum.values[index].titulo,
                  );
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
