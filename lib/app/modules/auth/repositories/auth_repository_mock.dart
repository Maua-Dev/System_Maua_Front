import 'package:system_maua_front/app/modules/auth/errors/errors.dart';

import 'auth_repository_interface.dart';

class AuthRepositoryMock implements IAuthRepository {
  final String _email = 'teste@contato.com';
  final String _pw = 'testedevmaua';

  @override
  Future<String> loginWithEmail(String email, String password) async {
    if (password != _pw) {
      throw PasswordInvalid('Senha Inválida');
    } else if (email != _email) {
      throw EmailInvalid('Email Inválida');
    } else {
      return 'token12354';
    }
  }

  @override
  Future<String> refreshToken(String token) async {
    return 'newtoken';
  }
}
