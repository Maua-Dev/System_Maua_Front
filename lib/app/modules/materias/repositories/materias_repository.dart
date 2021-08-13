import 'package:system_maua_front/app/modules/materias/models/materias_model.dart';
import 'package:system_maua_front/app/modules/materias/models/professores_model.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';

import 'materias_repository_interface.dart';

class MateriasRepository implements IMateriasRepository {
  var listaMaterias = [
    MateriasModel(
        codigoMateria: 'EFB101',
        nome: TipoMateriaEnum.ACADEMIATALENTOS,
        foto: 'https://avatars.githubusercontent.com/u/24724451?v=4',
        introducao:
            'Aqui temos uma introdução sobre essa merda que ninguem usa pra porra nenhuma :)',
        professores: [
          ProfessoresModel(
              nome: 'Everson Denis',
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
          ProfessoresModel(
              nome: 'Furlaneto Cabeça de ',
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
          ProfessoresModel(
              nome: 'Glock camuflada com pentão de robocop',
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
        ]),
    MateriasModel(
        codigoMateria: 'EFB104',
        nome: TipoMateriaEnum.CALC1,
        foto: 'https://avatars.githubusercontent.com/u/24724451?v=4',
        introducao:
            'Aqui temos uma introdução sobre essa merda que todo mundo usa pra tudo :)',
        professores: [
          ProfessoresModel(
              nome: 'Furlaneto Cabeça de ',
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
          ProfessoresModel(
              nome: 'Furlaneto Cabeça de ',
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
        ]),
  ];

  @override
  Future<List<MateriasModel>> getMaterias() {
    return Future.value(listaMaterias);
  }

  @override
  Future<MateriasModel> getMateriaEspecifica(String codigoMateria) {
    return Future.value(listaMaterias
        .firstWhere((element) => element.codigoMateria == codigoMateria));
  }
}
