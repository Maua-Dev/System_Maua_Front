import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/reservas/enumerates/reservas_enum.dart';
import 'package:system_maua_front/app/modules/reservas/widgets/reservas_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/bottom_navigation_bar_controller.dart';

class ReservasPage extends StatefulWidget {
  ReservasPage({Key? key}) : super(key: key);

  @override
  _ReservasPageState createState() => _ReservasPageState();
}

class _ReservasPageState extends State<ReservasPage> {
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
                'Espaço destinado a reserva \nde espaços dentro da mauá, \nescolha o que deseja:',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: ReservasEnum.values.length,
                  itemBuilder: (context, index) {
                    return ReservasCard(
                      onTap: () {
                        Modular.to.pushNamed(
                          ReservasEnum.values[index].pushNamed,
                        );
                      },
                      titulo: ReservasEnum.values[index].titulo,
                    );
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Todos os horários serão com \npadrão de 1 hora sendo \nnecessário alugar com 2 \nhorários caso seja preciso mais, \ncada aluno tem direito a no \nmáximo 2 horas.',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
