import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

class IconButtonCustomWidget extends StatelessWidget {
  final Icon icon;
  final Function()? onPressed;
  const IconButtonCustomWidget({Key? key, required this.icon, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(top: 16),
      iconSize: 32,
      icon: icon,
      color: AppColors.white,
      onPressed: onPressed,
    );
  }
}
