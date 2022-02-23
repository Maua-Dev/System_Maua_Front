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

  var navegador = MockIModularNavigator();
  Modular.navigatorDelegate = navegador;
  var mockAuth = MockAuthController();
  var emailTeste = 'email';
  var senhaTeste = 'senha';

  setUpAll(() {
    controller = LoginController(mockAuth);
  });

  test('[TEST] - openLoginModal', () async {
    controller.openLoginModal();
    await Future.delayed(Duration(seconds: 4));
    expect(controller.loginModalIsOpen, true);
  });

  test('[TEST] - setEmail', () async {
    controller.setEmail(emailTeste);
    expect(controller.email, 'email');
  });

  test('[TEST] - setPassword', () async {
    controller.setPassword(senhaTeste);
    expect(controller.password, 'senha');
  });

  test('[TEST] - login', () async {
    when(mockAuth.loginWithEmail(any, any, any)).thenAnswer((_) async {});
    when(mockAuth.isLogged).thenReturn(true);
    when(navegador.navigate('/home')).thenAnswer((_) async => {});
    await (controller.login());
    verify(navegador.navigate('/home')).called(1);
    expect(mockAuth.isLogged, true);
  });

  test('[TEST] - PasswordVisibility', () async {
    controller.changePasswordVisibility();
    expect(controller.passwordVisibility, false);
  });
}
