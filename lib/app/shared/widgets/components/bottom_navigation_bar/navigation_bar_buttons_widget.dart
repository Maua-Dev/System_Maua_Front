import 'package:flutter/material.dart';
import 'package:system_maua_front/shared/themes/app_colors.dart';
import 'package:system_maua_front/shared/themes/app_text_styles.dart';

class NavigationBarButtonsWidget extends StatelessWidget {
  final Function()? onTap;
  final String titulo;
  final IconData icon;
  const NavigationBarButtonsWidget(
      {Key? key, this.onTap, required this.titulo, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 150,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: AppColors.darkBlue,
                size: 70,
              ),
              Text(
                titulo,
                style: TextStyle(color: AppColors.darkBlue, fontSize: 22),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
