import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/calendario/calendario_controller.dart';
import 'package:system_maua_front/app/modules/calendario/widgets/event_card_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
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
              Observer(builder: (_) {
                var calendarCarousel = CalendarCarousel<Event>(
                  locale: 'pt-BR',
                  onDayPressed: (DateTime date, List<Event> events) {
                    controller.setDate(date);
                    controller.setListaEventos();
                    setState(() {});
                  },
                  selectedDayButtonColor: Colors.blue.shade700,
                  selectedDayTextStyle: TextStyle(color: Colors.white),
                  weekendTextStyle: TextStyle(color: Colors.red),
                  daysTextStyle: TextStyle(color: Colors.black),
                  nextDaysTextStyle: TextStyle(color: Colors.grey),
                  prevDaysTextStyle: TextStyle(color: Colors.grey),
                  weekdayTextStyle: AppTextStyles.appBarHomeTitle
                      .copyWith(color: AppColors.strongLetter, fontSize: 18),
                  height: MediaQuery.of(context).size.height * 0.54,
                  selectedDateTime: controller.selectedDateTime,
                  markedDatesMap: controller.markedDateMap,
                  headerTextStyle: AppTextStyles.appBarHomeTitle
                      .copyWith(color: AppColors.strongLetter),
                  markedDateIconMaxShown: 1,
                  todayButtonColor: Color(0x00000000),
                  todayTextStyle: TextStyle(color: Colors.black),
                  markedDateIconBuilder: (event) => event.icon,
                  leftButtonIcon: Icon(
                    Icons.arrow_back,
                    color: AppColors.strongLetter,
                    size: 28,
                  ),
                  rightButtonIcon: Icon(
                    Icons.arrow_forward,
                    color: AppColors.strongLetter,
                    size: 28,
                  ),
                );
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: calendarCarousel,
                );
              }),
              controller.listaEventos.isEmpty
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
              ListView.builder(
                shrinkWrap: true,
                itemCount: controller.listaEventos.length,
                itemBuilder: (context, index) => Observer(
                  builder: (context) => Container(
                      child: EventCardWidget(
                    titulo: controller.listaEventos[index].titulo,
                    horario: controller.listaEventos[index].horario,
                    descricao: controller.listaEventos[index].descricao,
                    corEvento:
                        controller.listaEventos[index].tipoEventoEnum.color,
                    isOpen: controller.isOpen[index],
                    onPressed: () {
                      controller.trocaOpen(index);
                      setState(() {});
                    },
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
