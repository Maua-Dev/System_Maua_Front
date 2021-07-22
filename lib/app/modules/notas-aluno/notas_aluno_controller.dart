import 'package:mobx/mobx.dart';

part 'notas_aluno_controller.g.dart';

class NotasAlunoController = _NotasAlunoControllerBase
    with _$NotasAlunoController;

abstract class _NotasAlunoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
