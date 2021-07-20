import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/shared/themes/app_images.dart';
import '../../shared/themes/app_colors.dart';
import 'splash_controller.dart';

class SplashPage extends StatelessWidget {
  SplashPage() {
    changePage();
  }
  void changePage() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      Modular.to.pushReplacementNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkBlue,
      key: ValueKey('Splash'),
      child: Center(
        child: AppImages.logoImage,
      ),
    );
  }
}
