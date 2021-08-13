import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/materias/models/materias_model.dart';
import 'package:system_maua_front/app/modules/materias/repositories/materias_repository_interface.dart';

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
  MateriasModel materia = MateriasModel.newInstance();

  @action
  Future<void> getMateria() async {
    materia = await repository.getMateriaEspecifica(codigoMateria);
  }
}
