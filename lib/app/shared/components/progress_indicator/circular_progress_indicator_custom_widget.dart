import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

class CircularProgressIndicatorCustomWidget extends StatelessWidget {
  const CircularProgressIndicatorCustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkBlue),
    );
  }
}
