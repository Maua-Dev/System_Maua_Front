import 'package:flutter/material.dart';

class EventMapWidget extends StatelessWidget {
  final String day;
  const EventMapWidget({Key? key, required this.day}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        backgroundColor: Colors.red,
        child: Text(
          day,
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
