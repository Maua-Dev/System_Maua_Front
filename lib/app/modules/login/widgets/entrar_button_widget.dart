import 'package:flutter/material.dart';

import '../../../shared/themes/app_colors.dart';
import '../../../shared/themes/app_text_styles.dart';

class EntrarButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  const EntrarButtonWidget({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(MediaQuery.of(context).size.width * .7, 50),
        ),
        child: Text(
          'Entrar',
          style: AppTextStyles.cardH3.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
