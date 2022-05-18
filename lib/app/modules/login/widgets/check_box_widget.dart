import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

class CheckBoxWidget extends StatelessWidget {
  final void Function(bool?)? onChanged;
  final bool isChecked;
  const CheckBoxWidget({
    Key? key,
    this.onChanged,
    required this.isChecked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          value: isChecked,
          onChanged: onChanged,
          activeColor: AppColors.brandingBlue,
          checkColor: AppColors.white,
        ),
        Text(
          'Continuar conectado',
          style: TextStyle(color: AppColors.generalLetter),
        ),
      ],
    );
  }
}
