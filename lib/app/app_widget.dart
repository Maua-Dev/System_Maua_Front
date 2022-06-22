import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:system_maua_front/app/modules/notas/pages/notas-aluno/notas_aluno_page.dart';
import 'package:system_maua_front/app/modules/subjects/subject_page.dart';
import 'package:system_maua_front/app/shared/services/firebase/firebase_analytics_service.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'modules/home/home_page.dart';
import 'modules/login/login_page.dart';
import 'modules/user-configuration/user_configuration_page.dart';
import 'shared/themes/app_text_styles.dart';

final scaffoldKey = GlobalKey<ScaffoldMessengerState>();
final ScaffoldMessengerState scaffold = scaffoldKey.currentState!;

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Intl.defaultLocale = 'pt_BR';
    return GetMaterialApp(
      scaffoldMessengerKey: scaffoldKey,
      initialRoute: '/login',
      navigatorObservers: [FirebaseAnalyticsService().getAnalyticsObserver()],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('pt', 'BR')],
      debugShowCheckedModeBanner: false,
      title: 'Mauápp',
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
      ),
      home: const LoginPage(),
      getPages: [
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(
          name: '/home',
          page: () => const HomePage(),
        ),
        GetPage(name: '/medias', page: () => const NotasAlunoPage()),
        GetPage(
          name: '/subject',
          page: () => SubjectPage(),
        ),
        GetPage(
          name: '/configuracoes-usuario',
          page: () => UserConfigurationPage(
              userPhoto: Get.arguments[2] as String,
              userRa: Get.arguments[1] as String,
              username: Get.arguments[0] as String),
          transition: Transition.fadeIn,
        ),
      ],
    );
  }
}
