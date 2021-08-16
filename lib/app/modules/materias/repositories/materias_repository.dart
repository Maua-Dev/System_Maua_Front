import 'package:system_maua_front/app/modules/materias-apresentacao/models/materias_apresentacao_model.dart';
import 'package:system_maua_front/app/modules/materias-aulas/models/materias_aulas_model.dart';
import 'package:system_maua_front/app/modules/materias/models/materias_model.dart';
import 'package:system_maua_front/app/modules/materias/models/professores_model.dart';
import 'package:system_maua_front/app/shared/enumerates/pdf_enum.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';
import 'package:system_maua_front/app/shared/models/arquivos_model.dart';

import 'materias_repository_interface.dart';

class MateriasRepository implements IMateriasRepository {
  var listaMaterias = [
    MateriasModel(
        codigoMateria: 'EFB101',
        nomeMateria: TipoMateriaEnum.ACADEMIATALENTOS,
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
        nomeMateria: TipoMateriaEnum.CALC1,
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
            url: 'http://africau.edu/images/default/sample.pdf',
            tituloArquivo: 'Plano de Ensino - Cálculo I'),
        introducao:
            'Aqui temos uma introdução sobre essa merda que todo mundo usa pra tudo :)',
        codigoMateria: 'EFB104',
        nomeMateria: TipoMateriaEnum.CALC1,
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
            url: 'http://africau.edu/images/default/sample.pdf',
            tituloArquivo: 'Plano de Ensino - Academia de Talentos'),
        introducao:
            'Aqui temos uma introdução sobre essa merda que ninguem usa pra porra nenhuma :)',
        codigoMateria: 'EFB101',
        nomeMateria: TipoMateriaEnum.ACADEMIATALENTOS,
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

  var listaAulasMaterias = [
    MateriasAulasModel(
        idPagina: 1,
        tituloPagina: 'Aula 1 - 23/02/2021',
        codigoMateria: 'EFB104',
        resumoPagina:
            'Aqui temos uma introdução sobre essa merda que ninguem usa pra porra nenhuma :)',
        listaArquivos: [
          ArquivosModel(
              arquivosEnum: ArquivosEnum.XML,
              url: 'http://africau.edu/images/default/sample.pdf',
              tituloArquivo: 'Aula 1 - Excel'),
          ArquivosModel(
              arquivosEnum: ArquivosEnum.PDF,
              url: 'http://africau.edu/images/default/sample.pdf',
              tituloArquivo: 'Aula 1 - PDF'),
          ArquivosModel(
              arquivosEnum: ArquivosEnum.URL,
              url: 'http://africau.edu/images/default/sample.pdf',
              tituloArquivo: 'Aula 1 - URL'),
        ]),
    MateriasAulasModel(
        idPagina: 2,
        tituloPagina: 'Aula 2 - 02/03/2021',
        codigoMateria: 'EFB101',
        resumoPagina:
            'Aqui temos uma introdução sobre essa merda que ninguem usa pra porra nenhuma :)',
        listaArquivos: [
          ArquivosModel(
              arquivosEnum: ArquivosEnum.XML,
              url: 'http://africau.edu/images/default/sample.pdf',
              tituloArquivo: 'Aula 1 - Excel'),
          ArquivosModel(
              arquivosEnum: ArquivosEnum.PDF,
              url: 'http://africau.edu/images/default/sample.pdf',
              tituloArquivo: 'Aula 1 - PDF'),
          ArquivosModel(
              arquivosEnum: ArquivosEnum.URL,
              url: 'http://africau.edu/images/default/sample.pdf',
              tituloArquivo: 'Aula 1 - URL'),
        ]),
    MateriasAulasModel(
        idPagina: 1,
        tituloPagina: 'Aula 1 - 23/02/2021',
        codigoMateria: 'EFB101',
        resumoPagina:
            'Aqui temos uma introdução sobre essa merda que ninguem usa pra porra nenhuma :)',
        listaArquivos: [
          ArquivosModel(
              arquivosEnum: ArquivosEnum.XML,
              url: 'http://africau.edu/images/default/sample.pdf',
              tituloArquivo: 'Aula 1 - Excel'),
          ArquivosModel(
              arquivosEnum: ArquivosEnum.PDF,
              url: 'http://africau.edu/images/default/sample.pdf',
              tituloArquivo: 'Aula 1 - PDF'),
          ArquivosModel(
              arquivosEnum: ArquivosEnum.URL,
              url: 'http://africau.edu/images/default/sample.pdf',
              tituloArquivo: 'Aula 1 - URL'),
        ]),
    MateriasAulasModel(
        idPagina: 2,
        tituloPagina: 'Aula 2 - 02/03/2021',
        codigoMateria: 'EFB104',
        resumoPagina:
            'Aqui temos uma introdução sobre essa merda que ninguem usa pra porra nenhuma :)',
        listaArquivos: [
          ArquivosModel(
              arquivosEnum: ArquivosEnum.XML,
              url: 'http://africau.edu/images/default/sample.pdf',
              tituloArquivo: 'Aula 1 - Excel'),
          ArquivosModel(
              arquivosEnum: ArquivosEnum.PDF,
              url: 'http://africau.edu/images/default/sample.pdf',
              tituloArquivo: 'Aula 1 - PDF'),
          ArquivosModel(
              arquivosEnum: ArquivosEnum.URL,
              url: 'http://africau.edu/images/default/sample.pdf',
              tituloArquivo: 'Aula 1 - URL'),
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

  @override
  Future<String> getUrlPdf(String codigoMateria) {
    return Future.value(listaApresentacaoMaterias
        .firstWhere((element) => element.codigoMateria == codigoMateria)
        .pdf!
        .url);
  }

  @override
  Future<MateriasAulasModel> getAula(String codigoMateria, int idPagina) {
    return Future.value(listaAulasMaterias.firstWhere((element) =>
        element.codigoMateria == codigoMateria &&
        element.idPagina == idPagina));
  }
}
