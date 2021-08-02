import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:system_maua_front/app/modules/calendario/calendario_controller.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

class CalendarioPage extends StatefulWidget {
  CalendarioPage({Key? key}) : super(key: key);

  @override
  _CalendarioPageState createState() => _CalendarioPageState();
}

class _CalendarioPageState
    extends ModularState<CalendarioPage, CalendarioController> {
  @override
  Widget build(BuildContext context) {
    var selectedDateTime = DateTime.now();
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Observer(builder: (_) {
              var calendarCarousel = CalendarCarousel<Event>(
                locale: 'pt-BR',
                onDayPressed: (DateTime date, List<Event> events) {
                  setState(() => selectedDateTime = date);
                  controller.setListaEventos(date);
                },
                thisMonthDayBorderColor: Colors.transparent,
                selectedDayButtonColor: AppColors.lightBlue,
                selectedDayTextStyle: TextStyle(color: Colors.black),
                weekendTextStyle: TextStyle(color: Colors.red),
                daysTextStyle: TextStyle(color: Colors.black),
                nextDaysTextStyle: TextStyle(color: Colors.grey),
                prevDaysTextStyle: TextStyle(color: Colors.grey),
                weekdayTextStyle: TextStyle(color: Colors.grey),
                height: MediaQuery.of(context).size.height * 0.52,
                selectedDateTime: selectedDateTime,
                markedDatesMap: controller.markedDateMap,
                markedDateIconBuilder: (event) {
                  return event.icon;
                },
                markedDateShowIcon: true,
                markedDateIconMaxShown: 1,
                markedDateMoreShowTotal: null,
                todayButtonColor: Color(0x00000000),
              );
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
                child: calendarCarousel,
              );
            }),
            ListView.builder(
              shrinkWrap: true,
              itemCount: controller.listaEventos.length,
              itemBuilder: (context, index) => Container(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(
                      children: [
                        Text(DateFormat('EEEE')
                            .format(controller.listaEventos[index].dateTime!)
                            .toString()),
                        Text(controller.listaEventos[index].dateTime!.day
                            .toString()),
                        Text(controller.listaEventos[index].horario),
                        Text(controller.listaEventos[index].descricao),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        // DetalhesAvaliação();
      ),
    ));
  }
}
