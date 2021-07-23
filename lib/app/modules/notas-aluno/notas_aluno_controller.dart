import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/notas-aluno/repositories/notas_aluno_repository_interface.dart';

import 'models/materia_model.dart';

part 'notas_aluno_controller.g.dart';

class NotasAlunoController = _NotasAlunoControllerBase
    with _$NotasAlunoController;

abstract class _NotasAlunoControllerBase with Store {
  final INotasAlunoRepository repository;

  _NotasAlunoControllerBase(this.repository) {
    getMateria();
  }

  @action
  int returnIndex(int index) {
    var retorno = index == 0 ? 0 : index * 2;
    return retorno;
  }

  @action
  int returnIndexIncremento(int index) {
    var retorno = index == 0 ? 1 : index * 2 + 1;
    return retorno;
  }

  @observable
  MateriaModel materia = MateriaModel.newInstance();

  @action
  Future<void> getMateria() async {
    materia = await repository.getMateria();
  }
}
