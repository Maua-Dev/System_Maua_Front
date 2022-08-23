import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/app_module.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'package:system_maua_front/app/shared/services/firebase/firebase_analytics_service.dart';

import '../setup_firebase_mocks.dart';

void main() {
  initModule(AppModule());
  setupCloudFirestoreMocks();

  setUpAll(() async {
    await Firebase.initializeApp();
  });

  test('[TEST] - BottomNavigationBarController Injection', () {
    var injection = Modular.get<BottomNavigationBarController>();
    expect(injection, isInstanceOf<BottomNavigationBarController>());
  });

  test('[TEST] - FirebaseAnalyticsService Injection', () {
    var injection = Modular.get<FirebaseAnalyticsService>();
    expect(injection, isInstanceOf<FirebaseAnalyticsService>());
  });

  test('[TEST] - Dio Injection', () {
    var injection = Modular.get<Dio>();
    expect(injection, isInstanceOf<Dio>());
  });
}
