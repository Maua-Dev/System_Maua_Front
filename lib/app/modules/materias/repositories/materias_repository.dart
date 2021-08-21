import 'package:system_maua_front/app/modules/materias/models/materias_model.dart';
import 'package:system_maua_front/app/modules/materias/models/professores_model.dart';
import 'package:system_maua_front/app/modules/materias/pages/materias-aulas/models/materias_aulas_model.dart';
import 'package:system_maua_front/app/modules/materias/pages/materias-introducao/models/materias_introducao_model.dart';
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
      ],
      introducaoModel: MateriasIntroducaoModel(
        pdf: ArquivosModel(
            arquivosEnum: ArquivosEnum.PDF,
            url: 'http://africau.edu/images/default/sample.pdf',
            tituloArquivo: 'Plano de Ensino - Academia de Talentos'),
        introducao:
            'Aqui temos uma introdução sobre essa merda que ninguem usa pra porra nenhuma :)',
      ),
      listaAulas: [
        MateriasAulasModel(
            idPagina: 0,
            tituloPagina: 'Aula 1 - 23/02/2021',
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
            tituloPagina: 'Aula 2 - 02/03/2021',
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
      ],
    ),
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
      ],
      introducaoModel: MateriasIntroducaoModel(
        pdf: ArquivosModel(
            arquivosEnum: ArquivosEnum.PDF,
            url: 'http://africau.edu/images/default/sample.pdf',
            tituloArquivo: 'Plano de Ensino - Cálculo I'),
        introducao:
            'Aqui temos uma introdução sobre essa merda que todo mundo usa pra tudo :)',
      ),
      listaAulas: [
        MateriasAulasModel(
            idPagina: 0,
            tituloPagina: 'Aula 1 - 23/02/2021',
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
            tituloPagina: 'Aula 2 - 02/03/2021',
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
      ],
    ),
  ];

  @override
  Future<List<MateriasModel>> getMaterias() {
    return Future.value(listaMaterias);
  }

  @override
  Future<MateriasIntroducaoModel> getApresentacao(String codigoMateria) {
    return Future.value(listaMaterias
        .where((element) => element.codigoMateria == codigoMateria)
        .first
        .introducaoModel);
  }

  @override
  Future<String> getUrlPdf(String codigoMateria) {
    return Future.value(listaMaterias
        .where((element) => element.codigoMateria == codigoMateria)
        .first
        .introducaoModel!
        .pdf!
        .url);
  }

  @override
  Future<List<ProfessoresModel>> getProfessores(String codigoMateria) {
    return Future.value(listaMaterias
        .where((element) => element.codigoMateria == codigoMateria)
        .first
        .professores);
  }

  @override
  Future<MateriasAulasModel> getAula(codigoMateria, idPagina) {
    return Future.value(listaMaterias
        .where((element) => element.codigoMateria == codigoMateria)
        .first
        .listaAulas!
        .where((element) => element.idPagina == idPagina)
        .first);
  }

  @override
  Future<MateriasModel> getMateriaEspecifica(String codigoMateria) {
    return Future.value(listaMaterias
        .where((element) => element.codigoMateria == codigoMateria)
        .first);
  }
}
