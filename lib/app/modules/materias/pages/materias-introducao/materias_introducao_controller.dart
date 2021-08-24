import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/materias/models/professores_model.dart';
import 'package:system_maua_front/app/modules/materias/pages/materias-aulas/models/materias_aulas_model.dart';
import 'package:system_maua_front/app/modules/materias/repositories/materias_repository_interface.dart';

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
  MateriasAulasModel introducao = MateriasAulasModel.newInstance();

  @observable
  List<ProfessoresModel> professores = [];

  @action
  void horizontalDrag(DragStartDetails details) async {
    await Modular.to.pushNamed('/materias/aula/${introducao.idPagina + 1}');
  }

  @action
  Future<void> getMateria() async {
    introducao = await repository.getAula(codigoMateria, 0);
    professores = await repository.getProfessores(codigoMateria);
  }

  void navigateToPlanoEnsino() async {
    await Modular.to.pushNamed('/materias/plano-ensino',
        arguments: introducao.listaArquivos!.first);
  }
}
