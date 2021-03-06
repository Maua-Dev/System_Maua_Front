import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/app_module.dart';
import 'package:system_maua_front/app/modules/auth/auth_controller.dart';
import 'package:system_maua_front/app/modules/auth/repositories/auth_repository_interface.dart';
import 'package:system_maua_front/app/modules/auth/repositories/secure_storage_interface.dart';
import 'package:system_maua_front/app/shared/services/firebase/firebase_analytics_service.dart';

import '../../../setup_firebase_mocks.dart';
import 'auth_controller_test.mocks.dart';

@GenerateMocks([IAuthRepository, ISecureStorage, FirebaseAnalyticsService])
void main() {
  initModule(AppModule());
  setupCloudFirestoreMocks();
  var mockRepo = MockIAuthRepository();
  var mockStorage = MockISecureStorage();
  FirebaseAnalyticsService analytics = MockFirebaseAnalyticsService();

  late AuthController controller;

  setUpAll(() async {
    await Firebase.initializeApp();
    controller = AuthController(repository: mockRepo, analytics: analytics);
    when(analytics.setUserProperties('')).thenAnswer((_) async => null);
  });

  test('[TEST] - login with email no persistence', () async {
    when(mockRepo.loginWithEmail(any, any))
        .thenAnswer((_) async => 'tokenmock');
    await controller.loginWithEmail('email', 'password', false);

    verifyNever(mockStorage.saveToken(any));
  });
  test('[TEST] - login with email with persistence', () async {
    when(mockRepo.loginWithEmail(any, any))
        .thenAnswer((_) async => 'tokenmock');
    await controller.loginWithEmail('email', 'password', true);

    verify(mockStorage.saveToken(any)).called(1);
  });
  test('[TEST] - refreshToken with no persistence', () async {
    when(mockStorage.getToken()).thenAnswer((_) async => null);

    await controller.refreshToken();

    expect(controller.isLogged, false);
  });
  test('[TEST] - refreshToken with persistence', () async {
    when(mockStorage.getToken()).thenAnswer((_) async => 'tokenmock');
    when(mockStorage.saveToken(any)).thenAnswer((_) async {});
    when(mockRepo.refreshToken(any)).thenAnswer((_) async => 'tokenmock2');

    await controller.refreshToken();
    expect(controller.isLogged, true);
  });
}
