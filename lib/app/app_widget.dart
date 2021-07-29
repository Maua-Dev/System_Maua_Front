import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'shared/themes/app_text_styles.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/mural',
        debugShowCheckedModeBanner: false,
        title: 'Flutter Slidy',
        theme: ThemeData(
          fontFamily: 'NotoSans',
          colorScheme: ColorScheme.light().copyWith(
            primary: AppColors.darkBlue,
            secondary: AppColors.lightBlue,
            surface: AppColors.background,
          ),
          textTheme: TextTheme(
            bodyText1: AppTextStyles.bodyBold,
            bodyText2: AppTextStyles.body,
            headline6: AppTextStyles.lightBody,
          ),
          appBarTheme: AppBarTheme(
            color: AppColors.darkBlue,
            centerTitle: true,
            textTheme: TextTheme(
              headline6: AppTextStyles.appBarTitle,
            ),
          ),
          scaffoldBackgroundColor: AppColors.background,
        )).modular();
  }
}
