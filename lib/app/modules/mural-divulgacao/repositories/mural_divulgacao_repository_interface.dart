import 'package:system_maua_front/app/modules/mural-divulgacao/models/informacao_model.dart';

abstract class IMuralDivulgacaoRepository {
  Future<int> getInformacaoVendasNaoLido();
  Future<int> getInformacaoEquipesNaoLido();
  Future<int> getInformacaoCaNaoLido();
  Future<int> getInformacaoEstagioNaoLido();
}
