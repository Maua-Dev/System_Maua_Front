import 'package:flutter/material.dart';

class EventMapWidget extends StatelessWidget {
  final String day;
  final Color corAtividade;
  const EventMapWidget(
      {Key? key, required this.day, required this.corAtividade})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        backgroundColor: corAtividade,
        child: Text(
          day,
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
