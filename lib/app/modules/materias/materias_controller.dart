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

  @observable
  List<String> fotosProfessores = <String>[];

  @action
  void setFotosProfessores(int index) {
    var lista = <String>[];
    if (materias[index].professores != null) {
      for (var i = 0; i < materias[index].professores!.length; i++) {
        lista.add(materias[index].professores![i].foto);
      }
      fotosProfessores = lista;
    }
  }

  @action
  Future<void> getMaterias() async {
    materias = await repository.getMaterias();
  }
}
