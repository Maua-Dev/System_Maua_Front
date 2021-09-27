import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/enumerates/mural_enum.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/models/informacao_model.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/mural_divulgacao_controller.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/repositories/mural_divulgacao_repository_interface.dart';

import 'mural_divulgacao_controller_test.mocks.dart';

@GenerateMocks([IMuralDivulgacaoRepository])
void main() {
  IMuralDivulgacaoRepository repository = MockIMuralDivulgacaoRepository();
  late MuralDivulgacaoController muralDivulgacaoController;

  var listInformacao = <InformacaoModel>[
    InformacaoModel(muralEnum: MuralEnum.EQUIPES, quantidadeNaoLido: 800),
    InformacaoModel(muralEnum: MuralEnum.CA, quantidadeNaoLido: 10),
    InformacaoModel(muralEnum: MuralEnum.ESTAGIO, quantidadeNaoLido: 0),
    InformacaoModel(muralEnum: MuralEnum.VENDAS, quantidadeNaoLido: 0),
  ];

  setUpAll(() {
    when(repository.getInformacaoCaNaoLido()).thenAnswer((_) async =>
        listInformacao
            .where((element) => element.muralEnum == MuralEnum.CA)
            .first
            .quantidadeNaoLido);
    when(repository.getInformacaoEquipesNaoLido()).thenAnswer((_) async =>
        listInformacao
            .where((element) => element.muralEnum == MuralEnum.EQUIPES)
            .first
            .quantidadeNaoLido);
    when(repository.getInformacaoEstagioNaoLido()).thenAnswer((_) async =>
        listInformacao
            .where((element) => element.muralEnum == MuralEnum.ESTAGIO)
            .first
            .quantidadeNaoLido);
    when(repository.getInformacaoVendasNaoLido()).thenAnswer((_) async =>
        listInformacao
            .where((element) => element.muralEnum == MuralEnum.VENDAS)
            .first
            .quantidadeNaoLido);
    muralDivulgacaoController = MuralDivulgacaoController(repository);
  });

  test('[TEST] - getCaLength', () async {
    await muralDivulgacaoController.getCaLength();
    expect(muralDivulgacaoController.informacaoCaNaoLido, 10);
  });

  test('[TEST] - getVendasLength', () async {
    await muralDivulgacaoController.getVendasLength();
    expect(muralDivulgacaoController.informacaoVendasNaoLido, 0);
  });

  test('[TEST] - getEquipesLength', () async {
    await muralDivulgacaoController.getEquipesLength();
    expect(muralDivulgacaoController.informacaoEquipesNaoLido, 800);
  });

  test('[TEST] - getEstagioLength', () async {
    await muralDivulgacaoController.getEstagioLength();
    expect(muralDivulgacaoController.informacaoEstagioNaoLido, 0);
  });
}
