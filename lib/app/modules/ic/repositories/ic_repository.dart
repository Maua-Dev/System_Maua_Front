import 'package:system_maua_front/app/modules/ic/models/ic_model.dart';
import 'package:system_maua_front/app/modules/ic/repositories/ic_repository_interface.dart';
import 'package:system_maua_front/app/shared/enumerates/arquivos_enum.dart';
import 'package:system_maua_front/app/shared/enumerates/tronco_enum.dart';
import 'package:system_maua_front/app/shared/models/arquivos_model.dart';
import 'package:system_maua_front/app/shared/models/professores_model.dart';

class IcRepository implements IIcRepository {
  var listaIc = [
    IcModel(
        tituloIc: 'Sistemas mecatrônicos inteligentes e robótica',
        professoresIc: [
          ProfessoresModel(
              nome: 'Murilo Zanini', email: 'murilo.zanini@maua.br'),
          ProfessoresModel(nome: 'Pedrão', email: 'murilo.zanini@maua.br')
        ],
        descricao:
            'A atuação do grupo está voltada ao estudo e desenvolvimento de sistemas...',
        linhaPesquisa:
            'A atuação do grupo está voltada ao estudo e desenvolvimento de sistemas...',
        tronco: [TroncoEnum.COMPUTACAO]),
    IcModel(
        tituloIc: 'Sistemas mecatrônicos inteligentes e robótica',
        professoresIc: [
          ProfessoresModel(
              nome: 'Murilo Zanini', email: 'murilo.zanini@maua.br'),
        ],
        descricao:
            'A atuação do grupo está voltada ao estudo e desenvolvimento de sistemas...',
        linhaPesquisa:
            'A atuação do grupo está voltada ao estudo e desenvolvimento de sistemas...',
        listaArquivos: [
          ArquivosModel(
              tituloArquivo: 'url_para_exemplo_projeto',
              arquivosEnum: ArquivosEnum.URL,
              urlArquivo: '')
        ],
        tronco: [TroncoEnum.COMPUTACAO, TroncoEnum.ELETRONICA]),
    IcModel(
        tituloIc: 'Sistemas mecatrônicos inteligentes e robótica',
        professoresIc: [
          ProfessoresModel(nome: 'Murilo Zanini'),
        ],
        descricao:
            'A atuação do grupo está voltada ao estudo e desenvolvimento de sistemas...',
        linhaPesquisa:
            'A atuação do grupo está voltada ao estudo e desenvolvimento de sistemas...',
        tronco: [TroncoEnum.CIVIL]),
    IcModel(
        tituloIc: 'Sistemas mecatrônicos inteligentes e robótica',
        professoresIc: [
          ProfessoresModel(
              nome: 'Murilo Zanini', email: 'murilo.zanini@maua.br'),
          ProfessoresModel(nome: 'Pedrão', email: 'murilo.zanini@maua.br')
        ],
        descricao:
            'A atuação do grupo está voltada ao estudo e desenvolvimento de sistemas...',
        linhaPesquisa:
            'A atuação do grupo está voltada ao estudo e desenvolvimento de sistemas...',
        tronco: [TroncoEnum.CA, TroncoEnum.CIVIL]),
    IcModel(
        tituloIc: 'Sistemas mecatrônicos inteligentes e robótica',
        professoresIc: [
          ProfessoresModel(
              nome: 'Murilo Zanini', email: 'murilo.zanini@maua.br'),
          ProfessoresModel(nome: 'Pedrão', email: 'murilo.zanini@maua.br')
        ],
        descricao:
            'A atuação do grupo está voltada ao estudo e desenvolvimento de sistemas...',
        linhaPesquisa:
            'A atuação do grupo está voltada ao estudo e desenvolvimento de sistemas...',
        tronco: [TroncoEnum.CA]),
  ];

  @override
  Future<List<IcModel>> getDadosTronco(TroncoEnum tronco) {
    var lista = <IcModel>[];
    for (var i = 0; i < listaIc.length; i++) {
      if (listaIc[i].tronco.contains(tronco)) {
        lista.add(listaIc[i]);
      }
    }
    return Future.value(lista);
  }
}
