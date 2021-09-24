import 'package:system_maua_front/app/modules/help/pages/help-estagio/models/help_estagio_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/repositories/help_estagio_repository_interface.dart';
import 'package:system_maua_front/app/shared/enumerates/arquivos_enum.dart';
import 'package:system_maua_front/app/shared/models/arquivos_model.dart';

class HelpEstagioRepository implements IHelpEstagioRepository{
  var listaEstagio = [
    HelpEstagioModel(
      tituloPanel: 'Resultado do relátorio de estágio',
      arquivo: ArquivoModel(nome:'resultado-relatorio-de-estagio.xlsx', 
      arquivo: ArquivosEnum.XML, url: ''),),
    HelpEstagioModel(
      tituloPanel: 'Plano de estágio',
      arquivo: ArquivoModel(nome:'plano-de-estagio.doc', 
      arquivo: ArquivosEnum.DOCS, url: ''),),
    HelpEstagioModel(
      tituloPanel: 'Capa para entrega do relátorio final',
      arquivo: ArquivoModel(nome:'capa-para-entrega-do-relatorio-final.docx', 
      arquivo: ArquivosEnum.DOCS, url: ''),),
    HelpEstagioModel(
      tituloPanel: 'Resolução normativa',
      arquivo: ArquivoModel(nome:'resolucao-normativa.pdf', 
      arquivo: ArquivosEnum.PDF, url: ''),),
    HelpEstagioModel(
      tituloPanel: 'Instruções para entrega do processo de estágio supervisionado obrigatório',
      arquivo: ArquivoModel(nome:'instrucoes-para-entrega-do-processo-de-estagio-supervisionado-obrigatorio.pdf', 
      arquivo: ArquivosEnum.PDF, url: ''),),
    HelpEstagioModel(
      tituloPanel: 'Modelo de convênio',
      arquivo: ArquivoModel(nome:'termo-de-convenio.doc', 
      arquivo: ArquivosEnum.DOCS, url: ''),),
    HelpEstagioModel(
      tituloPanel: 'Modelo de contrato',
      arquivo: ArquivoModel(nome:'modelo-de-contrato.doc', 
      arquivo: ArquivosEnum.DOCS, url: ''),),
  ];

  @override
  Future<List<HelpEstagioModel>> getEstagio() {
    return Future.value(listaEstagio);
  }

  
}