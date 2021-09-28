import 'package:system_maua_front/app/modules/help/pages/help-estagio/models/help_estagio_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/repositories/help_estagio_repository_interface.dart';
import 'package:system_maua_front/app/shared/enumerates/arquivos_enum.dart';
import 'package:system_maua_front/app/shared/models/arquivos_model.dart';

class HelpEstagioRepository implements IHelpEstagioRepository {
  var listaEstagio = [
    HelpEstagioModel(
      tituloPanel: 'Resultado do relátorio de estágio',
      nomearquivo: ArquivoModel(
          nome: 'resultado-relatorio-de-estagio.xlsx',
          arquivo: ArquivosEnum.XML,
          url: ''),
    ),
    HelpEstagioModel(
      tituloPanel: 'Plano de estágio',
      nomearquivo: ArquivoModel(
          nome: 'plano-de-estagio.doc', arquivo: ArquivosEnum.DOCS, url: ''),
    ),
    HelpEstagioModel(
      tituloPanel: 'Capa para entrega do relátorio final',
      nomearquivo: ArquivoModel(
          nome: 'capa-para-entrega-do-relatorio-final.docx',
          arquivo: ArquivosEnum.DOCS,
          url: ''),
    ),
    HelpEstagioModel(
      tituloPanel: 'Resolução normativa',
      nomearquivo: ArquivoModel(
          nome: 'resolucao-normativa.pdf', arquivo: ArquivosEnum.PDF, url: ''),
    ),
    HelpEstagioModel(
      tituloPanel:
          'Instruções para entrega do processo de estágio supervisionado obrigatório',
      nomearquivo: ArquivoModel(
          nome:
              'instrucoes-para-entrega-do-processo-de-estagio-supervisionado-obrigatorio.pdf',
          arquivo: ArquivosEnum.PDF,
          url: ''),
    ),
    HelpEstagioModel(
      tituloPanel: 'Modelo de convênio',
      nomearquivo: ArquivoModel(
          nome: 'termo-de-convenio.doc', arquivo: ArquivosEnum.DOCS, url: ''),
    ),
    HelpEstagioModel(
      tituloPanel: 'Modelo de contrato',
      nomearquivo: ArquivoModel(
          nome: 'modelo-de-contrato.doc', arquivo: ArquivosEnum.DOCS, url: ''),
    ),
  ];

  @override
  Future<List<HelpEstagioModel>> getEstagio() {
    return Future.value(listaEstagio);
  }
}
