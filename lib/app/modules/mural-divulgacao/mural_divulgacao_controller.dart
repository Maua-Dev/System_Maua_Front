import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/repositories/mural_divulgacao_repository_interface.dart';

part 'mural_divulgacao_controller.g.dart';

class MuralDivulgacaoController = _MuralDivulgacaoControllerBase
    with _$MuralDivulgacaoController;

abstract class _MuralDivulgacaoControllerBase with Store {
  final IMuralDivulgacaoRepository repository;

  _MuralDivulgacaoControllerBase(this.repository);

  Future<int> get getCaLength async =>
      await repository.getInformacaoCaNaoLido();
  Future<int> get getVendasLength async =>
      await repository.getInformacaoVendasNaoLido();
  Future<int> get getEquipesLength async =>
      await repository.getInformacaoEquipesNaoLido();
  Future<int> get getEstagioLength async =>
      await repository.getInformacaoEstagioNaoLido();
}
