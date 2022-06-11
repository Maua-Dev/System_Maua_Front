import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/auth/auth_controller.dart';
import 'package:system_maua_front/app/modules/login/login_controller.dart';

import 'login_controller_test.mocks.dart';

@GenerateMocks([AuthController, IModularNavigator])
void main() {
  late LoginController controller;

  var navigator = MockIModularNavigator();
  Modular.navigatorDelegate = navigator;
  var mockAuth = MockAuthController();
  var emailMock = 'email';
  var pwMock = 'senha';

  setUpAll(() {
    controller = LoginController(mockAuth);
  });

  test('[TEST] - openLoginModal', () async {
    controller.openLoginModal();
    await Future.delayed(Duration(seconds: 4));
    expect(controller.loginModalIsOpen, true);
  });

  test('[TEST] - setEmail', () async {
    controller.setEmail(emailMock);
    expect(controller.email, 'email');
  });

  test('[TEST] - setPassword', () async {
    controller.setPassword(pwMock);
    expect(controller.password, 'senha');
  });

  test('[TEST] - login', () async {
    when(mockAuth.loginWithEmail(any, any, any)).thenAnswer((_) async {});
    when(mockAuth.isLogged).thenReturn(true);
    when(navigator.navigate('/home')).thenAnswer((_) async => {});
    await (controller.login());
    verify(navigator.navigate('/home')).called(1);
    expect(mockAuth.isLogged, true);
  });

  test('[TEST] - changePasswordVisibility', () async {
    controller.changePasswordVisibility();
    expect(controller.passwordVisibility, false);
  });
}
