import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/materias/models/materias_model.dart';
import 'package:system_maua_front/app/modules/materias/models/professores_model.dart';
import 'package:system_maua_front/app/modules/materias/repositories/materias_repository_interface.dart';

import 'models/materias_introducao_model.dart';

part 'materias_introducao_controller.g.dart';

class MateriasIntroducaoController = _MateriasIntroducaoControllerBase
    with _$MateriasIntroducaoController;

abstract class _MateriasIntroducaoControllerBase with Store {
  final IMateriasRepository repository;
  final String codigoMateria;

  _MateriasIntroducaoControllerBase(
      {required this.repository, required this.codigoMateria}) {
    getMateria();
  }

  @observable
  MateriasIntroducaoModel materia = MateriasIntroducaoModel.newInstance();

  @observable
  MateriasModel materiaGeral = MateriasModel.newInstance();

  @observable
  List<ProfessoresModel> professores = [];

  @action
  Future<void> getMateria() async {
    materia = await repository.getApresentacao(codigoMateria);
    materiaGeral = await repository.getMateriaEspecifica(codigoMateria);
    professores = await repository.getProfessores(codigoMateria);
  }

  void navigateToPlanoEnsino() async {
    await Modular.to
        .pushNamed('/materias/plano-ensino', arguments: materiaGeral);
  }
}
