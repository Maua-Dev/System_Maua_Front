import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/materias/models/professores_model.dart';
import 'package:system_maua_front/app/modules/materias/repositories/materias_repository_interface.dart';

import 'models/materias_apresentacao_model.dart';

part 'materias_apresentacao_controller.g.dart';

class MateriasApresentacaoController = _MateriasApresentacaoControllerBase
    with _$MateriasApresentacaoController;

abstract class _MateriasApresentacaoControllerBase with Store {
  final IMateriasRepository repository;
  final String codigoMateria;

  _MateriasApresentacaoControllerBase(
      {required this.repository, required this.codigoMateria}) {
    getMateria();
  }

  @observable
  MateriasApresentacaoModel materia = MateriasApresentacaoModel.newInstance();

  @observable
  List<ProfessoresModel> professores = [];

  @action
  Future<void> getMateria() async {
    materia = await repository.getApresentacao(codigoMateria);
    professores = await repository.getProfessores(codigoMateria);
  }

  void navigateToPlanoEnsino() async {
    await Modular.to.pushNamed('/materias/plano-ensino', arguments: materia);
  }
}
