import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/shared/auth/repositories/auth_repository.dart';

part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  final AuthRepository repository;

  _AuthControllerBase(this.repository);
}
