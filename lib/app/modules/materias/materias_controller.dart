import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/materias/models/materias_model.dart';
import 'package:system_maua_front/app/modules/materias/repositories/materias_repository_interface.dart';

part 'materias_controller.g.dart';

class MateriasController = MateriasControllerBase with _$MateriasController;

abstract class MateriasControllerBase with Store {
  final IMateriasRepository repository;

  MateriasControllerBase(this.repository) {
    getMaterias();
  }

  @observable
  List<MateriasModel> materias = <MateriasModel>[];

  @action
  Future<void> getMaterias() async {
    materias = await repository.getMaterias();
  }
}
