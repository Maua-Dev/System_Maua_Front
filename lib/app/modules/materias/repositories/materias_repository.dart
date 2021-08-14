import 'package:system_maua_front/app/modules/materias-apresentacao/models/materias_apresentacao_model.dart';
import 'package:system_maua_front/app/modules/materias/models/materias_model.dart';
import 'package:system_maua_front/app/modules/materias/models/professores_model.dart';
import 'package:system_maua_front/app/shared/enumerates/pdf_enum.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';
import 'package:system_maua_front/app/shared/models/pdf_model.dart';

import 'materias_repository_interface.dart';

class MateriasRepository implements IMateriasRepository {
  var listaMaterias = [
    MateriasModel(
        codigoMateria: 'EFB101',
        nome: TipoMateriaEnum.ACADEMIATALENTOS,
        foto: 'https://avatars.githubusercontent.com/u/24724451?v=4',
        professores: [
          ProfessoresModel(
              nome: 'Everson Denis',
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
          ProfessoresModel(
              nome: 'Furlaneto Cabeça de ',
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
          ProfessoresModel(
              nome: 'Murilo Nerd Zanini',
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
        ]),
    MateriasModel(
        codigoMateria: 'EFB104',
        nome: TipoMateriaEnum.CALC1,
        foto: 'https://avatars.githubusercontent.com/u/24724451?v=4',
        professores: [
          ProfessoresModel(
              nome: 'Furlaneto Cabeça de ',
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
          ProfessoresModel(
              nome: 'Furlaneto Cabeça de ',
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
        ]),
  ];

  var listaApresentacaoMaterias = [
    MateriasApresentacaoModel(
        pdf: ArquivosModel(
            arquivosEnum: ArquivosEnum.PDF,
            url: '',
            tituloArquivo: 'Plano de Ensino - Cálculo I'),
        introducao:
            'Aqui temos uma introdução sobre essa merda que todo mundo usa pra tudo :)',
        codigoMateria: 'EFB104',
        nome: TipoMateriaEnum.CALC1,
        foto: 'https://avatars.githubusercontent.com/u/24724451?v=4',
        professores: [
          ProfessoresModel(
              nome: 'Furlaneto Cabeça de ',
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
          ProfessoresModel(
              nome: 'Furlaneto Cabeça de ',
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
        ]),
    MateriasApresentacaoModel(
        pdf: ArquivosModel(
            arquivosEnum: ArquivosEnum.PDF,
            url: '',
            tituloArquivo: 'Plano de Ensino - Academia de Talentos'),
        introducao:
            'Aqui temos uma introdução sobre essa merda que ninguem usa pra porra nenhuma :)',
        codigoMateria: 'EFB101',
        nome: TipoMateriaEnum.ACADEMIATALENTOS,
        foto: 'https://avatars.githubusercontent.com/u/24724451?v=4',
        professores: [
          ProfessoresModel(
              nome: 'Everson Denis',
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
          ProfessoresModel(
              nome: 'Furlaneto Cabeça de ',
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
          ProfessoresModel(
              nome: 'Murilo Nerd Zanini',
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
        ]),
  ];

  @override
  Future<List<MateriasModel>> getMaterias() {
    return Future.value(listaMaterias);
  }

  @override
  Future<MateriasApresentacaoModel> getMateriaEspecifica(String codigoMateria) {
    return Future.value(listaApresentacaoMaterias
        .firstWhere((element) => element.codigoMateria == codigoMateria));
  }
}
