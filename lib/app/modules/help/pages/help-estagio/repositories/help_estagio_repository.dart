import 'package:system_maua_front/app/modules/help/pages/help-estagio/models/help_estagio_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/repositories/help_estagio_repository_interface.dart';

class HelpEstagioRepository implements IHelpEstagioRepository{
  var listaEstagio = [
    HelpEstagioModel(
      nome: 'Resultado do relátorio de estágio',
      descricao: 'resultado-relatorio-de-estagio.xlsx'),
    HelpEstagioModel(
      nome: 'Resultado do relátorio de estágio',
      descricao: 'resultado-relatorio-de-estagio.xlsx'),
    HelpEstagioModel(
      nome: 'Resultado do relátorio de estágio',
      descricao: 'resultado-relatorio-de-estagio.xlsx'),
    HelpEstagioModel(
      nome: 'Resultado do relátorio de estágio',
      descricao: 'resultado-relatorio-de-estagio.xlsx'),
  ];

  @override
  Future<List<HelpEstagioModel>> getEstagio() {
    return Future.value(listaEstagio);
  }

  
}