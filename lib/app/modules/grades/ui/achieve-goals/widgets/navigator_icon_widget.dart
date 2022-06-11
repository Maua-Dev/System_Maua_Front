import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class NavigatorIconWidget extends StatelessWidget {
  final String title;
  final String route;
  final String? subjectName;
  final IconData icon;
  const NavigatorIconWidget(
      {Key? key,
      required this.title,
      required this.route,
      this.subjectName,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          IconButton(
              onPressed: () {
                Modular.to.pushNamed(
                  route,
                  arguments: subjectName,
                );
              },
              icon: Icon(
                icon,
                color: AppColors.brandingBlue,
                size: 34,
              )),
          Text(
            title,
            style: AppTextStyles.bodyH4.copyWith(fontSize: 15),
          )
        ],
      ),
    );
  }
}
