import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/home/repositories/home_aluno_repository_interface.dart';

part 'home_aluno_controller.g.dart';

class HomeAlunoController = HomeAlunoControllerBase with _$HomeAlunoController;

abstract class HomeAlunoControllerBase with Store {
  final IHomeAlunoRepository repository;

  HomeAlunoControllerBase(this.repository) {
    getAluno();
    getMateria();
  }

  @observable
  var aluno;

  @observable
  var materia;

  @action
  Future<void> getAluno() async {
    aluno = await repository.getAluno();
  }

  @action
  Future<void> getMateria() async {
    materia = await repository.getMateria();
  }

  @observable
  bool isOpen = false;

  @action
  Future<void> trocaOpen() async {
    isOpen = !isOpen;
  }
}
