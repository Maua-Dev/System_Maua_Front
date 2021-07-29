import 'package:system_maua_front/app/modules/mural-divulgacao/enumerates/mural_enum.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/models/informacao_model.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/repositories/mural_divulgacao_repository_interface.dart';

class MuralDivulgacaoRepository implements IMuralDivulgacaoRepository {
  List<InformacaoModel> listInformacao = [
    InformacaoModel(muralEnum: MuralEnum.EQUIPES, quantidadeNaoLido: 9),
    InformacaoModel(muralEnum: MuralEnum.CA, quantidadeNaoLido: 0),
    InformacaoModel(muralEnum: MuralEnum.ESTAGIO, quantidadeNaoLido: 2),
    InformacaoModel(muralEnum: MuralEnum.VENDAS, quantidadeNaoLido: 4),
  ];

  @override
  Future<int> getInformacaoCaNaoLido() {
    return Future.value(listInformacao
        .where((element) => element.muralEnum == MuralEnum.CA)
        .length);
  }

  @override
  Future<int> getInformacaoEquipesNaoLido() {
    return Future.value(listInformacao
        .where((element) => element.muralEnum == MuralEnum.EQUIPES)
        .length);
  }

  @override
  Future<int> getInformacaoEstagioNaoLido() {
    return Future.value(listInformacao
        .where((element) => element.muralEnum == MuralEnum.ESTAGIO)
        .length);
  }

  @override
  Future<int> getInformacaoVendasNaoLido() {
    return Future.value(listInformacao
        .where((element) => element.muralEnum == MuralEnum.VENDAS)
        .length);
  }
}
