import 'package:mobx/mobx.dart';

part 'help_aluno_controller.g.dart';

class HelpAlunoController = _HelpAlunoControllerBase with _$HelpAlunoController;

abstract class _HelpAlunoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
