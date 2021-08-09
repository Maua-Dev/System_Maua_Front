import 'package:system_maua_front/app/modules/login/models/user_login_model.dart';
import 'package:system_maua_front/app/shared/auth/repositories/i_auth_repository.dart';

class AuthRepository implements IAuthRepository {
  var usuarios = <UserLogInModel>[
    UserLogInModel(
      email: 'ronaldo@broxa.com',
      senha: '123456',
    ),
    UserLogInModel(
      email: 'guerreiro@broxa.com',
      senha: 'senha',
    ),
    UserLogInModel(
      email: 'teste',
      senha: 'teste',
    )
  ];

  @override
  Future autenticacaoUsuario(UserLogInModel usuario) async {
    var teste = usuario;
    for (var i = 0; i < usuarios.length; i++) {
      if (teste.email == usuarios[i].email &&
          teste.senha == usuarios[i].senha) {
        return true;
      }
    }
    return false;
  }
}
