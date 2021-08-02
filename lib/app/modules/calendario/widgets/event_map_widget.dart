import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

class EventMapWidget extends StatelessWidget {
  final String day;
  const EventMapWidget({Key? key, required this.day}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        backgroundColor: AppColors.lightLetter,
        child: Text(
          day,
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
