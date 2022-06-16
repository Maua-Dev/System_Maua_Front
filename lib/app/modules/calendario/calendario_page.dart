import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:system_maua_front/app/modules/calendario/calendario_controller.dart';
import 'package:system_maua_front/app/modules/calendario/widgets/calendario_custom_widget.dart';
import 'package:system_maua_front/app/modules/calendario/widgets/event_card_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

import '../../injection_container.dart';
import 'enumerates/evento_enum.dart';

class CalendarioPage extends StatefulWidget {
  CalendarioPage({Key? key}) : super(key: key);

  @override
  _CalendarioPageState createState() => _CalendarioPageState();
}

class _CalendarioPageState extends State<CalendarioPage> {
  @override
  Widget build(BuildContext context) {
    var controller = serviceLocator<CalendarioController>();
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
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                child: Divider(
                  height: 2,
                  color: Colors.black,
                ),
              ),
              Observer(
                builder: (context) => controller.listEventoPanel.isEmpty
                    ? SizedBox.shrink()
                    : Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            child: Text(
                              controller.listEventoPanel[0].evento
                                      .getDiaDaSemana +
                                  '  •  ' +
                                  controller.listEventoPanel[0].evento
                                      .getDataFormatada,
                              style: AppTextStyles.titleH1,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
              ),
              Observer(builder: (_) {
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.listEventoPanel.length,
                    itemBuilder: (context, index) => Container(
                            child: EventCardWidget(
                          titulo:
                              controller.listEventoPanel[index].evento.titulo,
                          horario:
                              controller.listEventoPanel[index].evento.horario,
                          descricao: controller
                              .listEventoPanel[index].evento.descricao,
                          corEvento: controller.listEventoPanel[index].evento
                              .tipoEventoEnum.color,
                          isOpen: controller.listEventoPanel[index].isOpen,
                          onPressed: () {
                            controller.trocaOpen(index);
                          },
                        )));
              }),
            ],
          ),
        ),
      ),
    ));
  }
}
