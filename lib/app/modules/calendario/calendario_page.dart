import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/calendario/calendario_controller.dart';
import 'package:system_maua_front/app/modules/calendario/widgets/calendario_custom_widget.dart';
import 'package:system_maua_front/app/modules/calendario/widgets/event_card_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

import 'enumerates/evento_enum.dart';

class CalendarioPage extends StatefulWidget {
  CalendarioPage({Key? key}) : super(key: key);

  @override
  _CalendarioPageState createState() => _CalendarioPageState();
}

class _CalendarioPageState
    extends ModularState<CalendarioPage, CalendarioController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBarWidget(
        title: 'Calendário',
        icon: Icons.calendar_today,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: Column(
            children: [
              Observer(
                builder: (_) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CalendarioCustomWidget(
                      selectedDateTime: controller.selectedDateTime,
                      setDate: controller.setDate,
                      setListaEventos: controller.setListaEventos,
                      markedDateMap: controller.markedDateMap,
                    ),
                  );
                },
                // future: controller.getAvaliacoes(),
              ),
              Observer(
                builder: (context) => controller.listaEventos.isEmpty
                    ? SizedBox.shrink()
                    : Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 8),
                          child: Container(
                            child: Text(
                              controller.listaEventos[0].getDiaDaSemana +
                                  '  •  ' +
                                  controller.listaEventos[0].getDataFormatada,
                              style:
                                  AppTextStyles.bodyBold.copyWith(fontSize: 24),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
              ),
              Observer(builder: (_) {
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.listaEventos.length,
                    itemBuilder: (context, index) =>
                        Container(child: Observer(builder: (_) {
                          return EventCardWidget(
                            titulo: controller.listaEventos[index].titulo,
                            horario: controller.listaEventos[index].horario,
                            descricao: controller.listaEventos[index].descricao,
                            corEvento: controller
                                .listaEventos[index].tipoEventoEnum.color,
                            isOpen: controller.isOpen[index],
                            onPressed: () {
                              controller.trocaOpen(index);
                            },
                          );
                        })));
              }),
            ],
          ),
        ),
      ),
    ));
  }
}
