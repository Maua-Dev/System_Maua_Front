import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/login/models/user_login_model.dart';
import 'package:system_maua_front/app/shared/auth/repositories/i_auth_repository.dart';

part 'login_controller.g.dart';

class LoginController = _LoginStoreController with _$LoginController;

abstract class _LoginStoreController with Store {
  final IAuthRepository repository;

  _LoginStoreController(this.repository);

  @observable
  List<UserLogInModel> listaUsuarios = [
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
}
