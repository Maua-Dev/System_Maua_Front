import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

class IconButtonCustomWidget extends StatelessWidget {
  final IconData icon;
  final Function()? onPressed;
  final double size;
  const IconButtonCustomWidget(
      {Key? key, required this.icon, this.onPressed, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(top: 16),
      iconSize: size,
      icon: Icon(icon),
      color: AppColors.textButtonCollor,
      onPressed: onPressed,
    );
  }
}
