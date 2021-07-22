import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/shared/themes/app_gradients.dart';
import 'package:system_maua_front/app/shared/themes/app_images.dart';

class SplashPage extends StatelessWidget {
  SplashPage() {
    changePage();
  }
  void changePage() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      Modular.to.navigate('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppGradients.blueGradient,
      ),
      key: ValueKey('Splash'),
      child: Center(
        child: AppImages.logoImage,
      ),
    );
  }
}
