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
          padding: const EdgeInsets.only(bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Observer(builder: (_) {
                var calendarCarousel = CalendarCarousel<Event>(
                  locale: 'pt-BR',
                  onDayPressed: (DateTime date, List<Event> events) {
                    controller.setDate(date);
                    controller.setListaEventos(date);
                    setState(() {});
                  },
                  selectedDayButtonColor: AppColors.button,
                  selectedDayTextStyle: TextStyle(color: Colors.black),
                  weekendTextStyle: TextStyle(color: Colors.red),
                  daysTextStyle: TextStyle(color: Colors.black),
                  nextDaysTextStyle: TextStyle(color: Colors.grey),
                  prevDaysTextStyle: TextStyle(color: Colors.grey),
                  weekdayTextStyle: TextStyle(color: Colors.grey),
                  height: MediaQuery.of(context).size.height * 0.52,
                  selectedDateTime: controller.selectedDateTime,
                  markedDatesMap: controller.markedDateMap,
                  markedDateIconBuilder: (event) {
                    return event.icon;
                  },
                  headerTextStyle: AppTextStyles.appBarHomeTitle
                      .copyWith(color: AppColors.strongLetter),
                  markedDateShowIcon: true,
                  markedDateIconMaxShown: 1,
                  markedDateMoreShowTotal: null,
                  todayButtonColor: Color(0x00000000),
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 20.0),
                  child: calendarCarousel,
                );
              }),
              controller.listaEventos.isEmpty
                  ? SizedBox.shrink()
                  : Center(
                      child: Container(
                        child: Text(
                          controller.listaEventos[0].getDiaDaSemana +
                              '  •  ' +
                              controller.listaEventos[0].getDataFormatada,
                          style: AppTextStyles.bodyBold.copyWith(fontSize: 24),
                          textAlign: TextAlign.center,
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
                    isOpen: controller.isOpen,
                    onPressed: controller.trocaOpen,
                  )),
                ),
              ),
            ],
          ),
        ),
        // DetalhesAvaliação();
      ),
    ));
  }
}
