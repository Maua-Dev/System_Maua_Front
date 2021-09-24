import 'package:system_maua_front/app/modules/help/pages/help-estagio/page/guia-de-estagio/models/guia_de_estagio_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/page/guia-de-estagio/repositories/guia_de_estagio_repository_interface.dart';

class GuiaEstagioRepository implements IGuiaEstagioRepository {
  var listaGuiaEstagio = [
    GuiaEstagioModel(
      nomePasso: '1° Passo: Curriculo', 
      descricaoPasso: 'Crie um curriculo em um word e crie um perfil no linkedin colocando suas informações academicas.'),
    GuiaEstagioModel(
      nomePasso: '2° Passo: Inscrição', 
      descricaoPasso: 'Mande seu curriculo para empresas e espere o retorno.'),
    GuiaEstagioModel(
      nomePasso: '3° Passo: Preparação', 
      descricaoPasso: 'Enquanto espera o retorno das empresas, estude os assuntos que a empresa acha desejáveis e diferenciávieis para ter resultados melhores.  '),
    GuiaEstagioModel(
      nomePasso: '4° Passo: Testes', 
      descricaoPasso: 'Faça os Teste das empresas que retornaram.'),
  ];

  @override
  Future<List<GuiaEstagioModel>> getGuiaEstagio(){
    return Future.value(listaGuiaEstagio);
  }

}