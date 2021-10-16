import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas-quadras/reservas_quadras_controller.dart';
import 'package:system_maua_front/app/modules/reservas/widgets/reservas_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';

class ReservasQuadrasPage extends StatefulWidget {
  ReservasQuadrasPage({Key? key}) : super(key: key);

  @override
  _ReservasQuadrasPageState createState() => _ReservasQuadrasPageState();
}

class _ReservasQuadrasPageState
    extends ModularState<ReservasQuadrasPage, ReservasQuadrasController> {
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
                'Qual esporte deseja praticar?',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Observer(builder: (_) {
              return ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.listaQuadras.length,
                itemBuilder: (context, index) {
                  return ReservasCard(
                    onTap: null,
                    titulo: controller.listaQuadras[index].titulo,
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
