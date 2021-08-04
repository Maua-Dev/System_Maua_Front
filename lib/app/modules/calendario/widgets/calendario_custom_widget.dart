import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class CalendarioCustomWidget extends StatefulWidget {
  final EventList<Event>? markedDateMap;
  final DateTime selectedDateTime;
  final Function(DateTime) setDate;
  final Function() setListaEventos;
  const CalendarioCustomWidget(
      {Key? key,
      this.markedDateMap,
      required this.selectedDateTime,
      required this.setDate,
      required this.setListaEventos})
      : super(key: key);

  @override
  _CalendarioCustomWidgetState createState() => _CalendarioCustomWidgetState();
}

class _CalendarioCustomWidgetState extends State<CalendarioCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return CalendarCarousel<Event>(
      locale: 'pt-BR',
      onDayPressed: (DateTime date, List<Event> events) {
        widget.setDate(date);
        widget.setListaEventos();
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
      selectedDateTime: widget.selectedDateTime,
      markedDatesMap: widget.markedDateMap,
      headerTextStyle:
          AppTextStyles.appBarHomeTitle.copyWith(color: AppColors.strongLetter),
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
  }
}
