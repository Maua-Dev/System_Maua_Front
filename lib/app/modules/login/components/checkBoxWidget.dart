import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

import '../login_controller.dart';

class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Observer(
          builder: (context) => Checkbox(
            value: controller.isChecked,
            onChanged: controller.setIsChecked,
            activeColor: AppColors.darkBlue,
            checkColor: AppColors.white,
          ),
        ),
        Text(
          'Continuar conectado',
          style: TextStyle(color: AppColors.strongLetter),
        ),
      ],
    );
  }
}
