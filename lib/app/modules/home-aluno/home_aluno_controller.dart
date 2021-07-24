import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/home-aluno/repositories/home_aluno_repository_interface.dart';
import 'package:system_maua_front/app/shared/models/aluno_model.dart';
import 'package:system_maua_front/app/shared/models/aula_model.dart';

part 'home_aluno_controller.g.dart';

class HomeAlunoController = HomeAlunoControllerBase with _$HomeAlunoController;

abstract class HomeAlunoControllerBase with Store {
  final IHomeAlunoRepository repository;

  HomeAlunoControllerBase(this.repository) {
    getAluno();
    getAula();
  }

  @observable
  AlunoModel aluno = AlunoModel.newInstance();

  @observable
  AulaModel aula = AulaModel.newInstance();

  @action
  Future<void> getAluno() async {
    aluno = await repository.getAluno();
  }

  @action
  Future<void> getAula() async {
    aula = await repository.getAula();
  }
}