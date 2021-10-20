import 'package:system_maua_front/app/modules/help/pages/help-estagio/models/help_estagio_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/repositories/help_estagio_repository_interface.dart';
import 'package:system_maua_front/app/shared/enumerates/arquivos_enum.dart';
import 'package:system_maua_front/app/shared/models/arquivos_model.dart';

class HelpEstagioRepository implements IHelpEstagioRepository {
  var listaEstagio = [
    HelpEstagioModel(
      tituloPanel: 'Resultado do relátorio de estágio',
      nomearquivo: ArquivosModel(
          tituloArquivo: 'resultado-relatorio-de-estagio.xlsx',
          arquivosEnum: ArquivosEnum.XML,
          urlArquivo: ''),
    ),
    HelpEstagioModel(
      tituloPanel: 'Plano de estágio',
      nomearquivo: ArquivosModel(
          tituloArquivo: 'plano-de-estagio.doc',
          arquivosEnum: ArquivosEnum.DOCS,
          urlArquivo: ''),
    ),
    HelpEstagioModel(
      tituloPanel: 'Capa para entrega do relátorio final',
      nomearquivo: ArquivosModel(
          tituloArquivo: 'capa-para-entrega-do-relatorio-final.docx',
          arquivosEnum: ArquivosEnum.DOCS,
          urlArquivo: ''),
    ),
    HelpEstagioModel(
      tituloPanel: 'Resolução normativa',
      nomearquivo: ArquivosModel(
          tituloArquivo: 'resolucao-normativa.pdf',
          arquivosEnum: ArquivosEnum.PDF,
          urlArquivo: ''),
    ),
    HelpEstagioModel(
      tituloPanel:
          'Instruções para entrega do processo de estágio supervisionado obrigatório',
      nomearquivo: ArquivosModel(
          tituloArquivo:
              'instrucoes-para-entrega-do-processo-de-estagio-supervisionado-obrigatorio.pdf',
          arquivosEnum: ArquivosEnum.PDF,
          urlArquivo: ''),
    ),
    HelpEstagioModel(
      tituloPanel: 'Modelo de convênio',
      nomearquivo: ArquivosModel(
          tituloArquivo: 'termo-de-convenio.doc',
          arquivosEnum: ArquivosEnum.DOCS,
          urlArquivo: ''),
    ),
    HelpEstagioModel(
      tituloPanel: 'Modelo de contrato',
      nomearquivo: ArquivosModel(
          tituloArquivo: 'modelo-de-contrato.doc',
          arquivosEnum: ArquivosEnum.DOCS,
          urlArquivo: ''),
    ),
  ];

  @override
  Future<List<HelpEstagioModel>> getEstagio() {
    return Future.value(listaEstagio);
  }
}
