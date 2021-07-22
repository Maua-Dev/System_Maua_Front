import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

class NavigationBarButtonsWidget extends StatelessWidget {
  final Function()? onTap;
  final String titulo;
  final IconData icon;
  const NavigationBarButtonsWidget(
      {Key? key, this.onTap, required this.titulo, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: AppColors.darkBlue,
            size: MediaQuery.of(context).size.width * 0.132,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              titulo,
              style: TextStyle(color: AppColors.darkBlue, fontSize: 22),
            ),
          ),
        ],
      ),
    );
  }
}
