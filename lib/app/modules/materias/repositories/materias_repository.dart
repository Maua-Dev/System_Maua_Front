import 'package:system_maua_front/app/modules/materias/models/materias_model.dart';
import 'package:system_maua_front/app/modules/materias/models/professores_model.dart';

import 'materias_repository_interface.dart';

class MateriasRepository implements IMateriasRepository {
  var listaMaterias = [
    MateriasModel(nome: 'Academia de Talentos', professores: [
      ProfessoresModel(
          foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
      ProfessoresModel(
          foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
      ProfessoresModel(
          foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
    ]),
    MateriasModel(nome: 'Cálculo Diferencial e Integral II', professores: [
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
