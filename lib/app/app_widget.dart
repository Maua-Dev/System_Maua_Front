import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'shared/themes/app_text_styles.dart';

final scaffoldKey = GlobalKey<ScaffoldMessengerState>();
final ScaffoldMessengerState scaffold = scaffoldKey.currentState!;

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Intl.defaultLocale = 'pt_BR';
    return MaterialApp(
        initialRoute: '/login',
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [Locale('pt')],
        debugShowCheckedModeBanner: false,
        title: 'Sistema Mauá Alunos',
        theme: ThemeData(
          fontFamily: 'NotoSans',
          colorScheme: ColorScheme.light().copyWith(
            primary: AppColors.brandingBlue,
            secondary: AppColors.lightBlue,
            surface: AppColors.background,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: AppColors.brandingBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))),
          textTheme: TextTheme(
            bodyText1: AppTextStyles.titleH2,
            bodyText2: AppTextStyles.cardH3,
          ),
          appBarTheme: AppBarTheme(
            color: AppColors.brandingBlue,
            centerTitle: true,
            toolbarTextStyle: AppTextStyles.titleH1,
          ),
          scaffoldBackgroundColor: AppColors.background,
        )).modular();
  }
}
