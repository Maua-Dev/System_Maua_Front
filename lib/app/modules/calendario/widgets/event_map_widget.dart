import 'package:flutter/material.dart';

class EventMapWidget extends StatelessWidget {
  final String day;
  final Color corAtividade;
  const EventMapWidget(
      {Key? key, required this.day, required this.corAtividade})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: MediaQuery.of(context).size.height < 600 ? 6 : 8,
        width: MediaQuery.of(context).size.height < 600 ? 6 : 8,
        decoration: BoxDecoration(
          color: corAtividade,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
