import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/ic/ic_controller.dart';
import 'package:system_maua_front/app/modules/ic/models/ic_model.dart';
import 'package:system_maua_front/app/modules/ic/repositories/ic_repository_interface.dart';
import 'package:system_maua_front/app/shared/enumerates/arquivos_enum.dart';
import 'package:system_maua_front/app/shared/enumerates/tronco_enum.dart';
import 'package:system_maua_front/app/shared/models/arquivos_model.dart';
import 'package:system_maua_front/app/shared/models/professores_model.dart';

import 'ic_controller_test.mocks.dart';

@GenerateMocks([IIcRepository])
void main() {
  IIcRepository repository = MockIIcRepository();
  late IcController controller;

  var troncoADM = TroncoEnum.ADM;
  var troncoAlimentos = TroncoEnum.ALIMENTOS;

  var lista = [
    IcModel(
        tituloIc: 'Sistemas mecatrônicos inteligentes e robótica',
        professoresIc: [
          ProfessoresModel(nome: 'Murilo Zanini'),
          ProfessoresModel(nome: 'Pedrão')
        ],
        descricao:
            'A atuação do grupo está voltada ao estudo e desenvolvimento de sistemas...',
        linhaPesquisa:
            'A atuação do grupo está voltada ao estudo e desenvolvimento de sistemas...',
        tronco: [TroncoEnum.COMPUTACAO]),
    IcModel(
        tituloIc: 'Sistemas mecatrônicos inteligentes e robótica',
        professoresIc: [
          ProfessoresModel(nome: 'Murilo Zanini'),
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
  ];

  var listaAlimentos = [
    IcModel(
        tituloIc: 'Sistemas mecatrônicos inteligentes e robótica',
        professoresIc: [
          ProfessoresModel(nome: 'Murilo Zanini'),
          ProfessoresModel(nome: 'Pedrão')
        ],
        descricao:
            'A atuação do grupo está voltada ao estudo e desenvolvimento de sistemas...',
        linhaPesquisa:
            'A atuação do grupo está voltada ao estudo e desenvolvimento de sistemas...',
        tronco: [TroncoEnum.ALIMENTOS]),
    IcModel(
        tituloIc: 'Sistemas mecatrônicos inteligentes e robótica',
        professoresIc: [
          ProfessoresModel(nome: 'Murilo Zanini'),
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
        tronco: [TroncoEnum.COMPUTACAO, TroncoEnum.ALIMENTOS]),
  ];

  setUpAll(() {
    when(repository.getDadosTronco(troncoADM)).thenAnswer((_) async => lista);
    when(repository.getDadosTronco(troncoAlimentos))
        .thenAnswer((_) async => listaAlimentos);
    controller = IcController(repository: repository);
  });

  test('[TEST] - getDadosTronco', () async {
    await controller.getDadosTronco();
    expect(controller.dadosTronco, lista);
  });

  test('[TEST] - setTronco', () async {
    var teste = TroncoEnum.ALIMENTOS;
    await controller.setTronco(teste);
    expect(controller.tronco, teste);
    expect(controller.dadosTronco, listaAlimentos);
  });
}
