import 'package:flutter_modular/flutter_modular.dart';
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
  List<String> getFotosProfessores(int index) {
    var fotosProfessores = <String>[];
    if (materias[index].professores != null) {
      for (var i = 0; i < materias[index].professores!.length; i++) {
        fotosProfessores.add(materias[index].professores![i].foto);
      }
      return fotosProfessores;
    }
    return [];
  }

  @action
  Future<void> getMaterias() async {
    materias = await repository.getMaterias();
  }

  void navigateToApresentacao(String codigoMateria) {
    Modular.to.pushNamed('/materias/apresentacao', arguments: codigoMateria);
  }
}
