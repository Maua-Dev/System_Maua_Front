abstract class IMuralDivulgacaoRepository {
  Future<int> getInformacaoVendasNaoLido();
  Future<int> getInformacaoEquipesNaoLido();
  Future<int> getInformacaoCaNaoLido();
  Future<int> getInformacaoEstagioNaoLido();
}
