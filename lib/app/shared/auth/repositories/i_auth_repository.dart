import 'package:system_maua_front/app/modules/login/models/user_login_model.dart';

abstract class IAuthRepository {
  Future autenticacaoUsuario(UserLogInModel usuario);
}
