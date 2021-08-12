import 'package:system_maua_front/app/modules/materias/models/materias_model.dart';
import 'package:system_maua_front/app/modules/materias/models/professores_model.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';

import 'materias_repository_interface.dart';

class MateriasRepository implements IMateriasRepository {
  var listaMaterias = [
    MateriasModel(
        nome: TipoMateriaEnum.ACADEMIATALENTOS,
        foto:
            'https://www.contabeis.com.br/assets/img/news/dc7f7a5aa93d4fc89c6edd19df58ea4a.jpg',
        professores: [
          ProfessoresModel(
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
          ProfessoresModel(
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
          ProfessoresModel(
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
        ]),
    MateriasModel(
        nome: TipoMateriaEnum.CALC1,
        foto:
            'https://www.contabeis.com.br/assets/img/news/dc7f7a5aa93d4fc89c6edd19df58ea4a.jpg',
        professores: [
          ProfessoresModel(
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
          ProfessoresModel(
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
        ]),
  ];

  @override
  Future<List<MateriasModel>> getMaterias() {
    return Future.value(listaMaterias);
  }
}
