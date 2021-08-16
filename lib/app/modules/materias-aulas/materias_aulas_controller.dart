import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/materias-aulas/models/materias_aulas_model.dart';
import 'package:system_maua_front/app/modules/materias/repositories/materias_repository_interface.dart';

part 'materias_aulas_controller.g.dart';

class MateriasAulasController = _MateriasAulasControllerBase
    with _$MateriasAulasController;

abstract class _MateriasAulasControllerBase with Store {
  final IMateriasRepository repository;
  final String codigoMateria;
  final int idPagina;

  _MateriasAulasControllerBase(
      {required this.repository,
      required this.codigoMateria,
      required this.idPagina}) {
    getAula();
  }

  @observable
  MateriasAulasModel aula = MateriasAulasModel.newInstance();

  Future<void> getAula() async {
    aula = await repository.getAula(codigoMateria, idPagina);
  }
}
