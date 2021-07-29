import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/repositories/mural_divulgacao_repository_interface.dart';

part 'mural_divulgacao_controller.g.dart';

class MuralDivulgacaoController = _MuralDivulgacaoControllerBase
    with _$MuralDivulgacaoController;

abstract class _MuralDivulgacaoControllerBase with Store {
  final IMuralDivulgacaoRepository repository;

  _MuralDivulgacaoControllerBase(this.repository) {
    getCaLength();
    getVendasLength();
    getEquipesLength();
    getEstagioLength();
  }

  @observable
  var informacaoCaNaoLido = 0;

  @observable
  var informacaoVendasNaoLido = 0;

  @observable
  var informacaoEquipesNaoLido = 0;

  @observable
  var informacaoEstagioNaoLido = 0;

  Future<int> getCaLength() async =>
      informacaoCaNaoLido = await repository.getInformacaoCaNaoLido();
  Future<int> getVendasLength() async =>
      informacaoVendasNaoLido = await repository.getInformacaoVendasNaoLido();
  Future<int> getEquipesLength() async =>
      informacaoEquipesNaoLido = await repository.getInformacaoEquipesNaoLido();
  Future<int> getEstagioLength() async =>
      informacaoEquipesNaoLido = await repository.getInformacaoEstagioNaoLido();
}
