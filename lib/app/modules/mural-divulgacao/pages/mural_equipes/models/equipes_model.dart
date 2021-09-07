class EquipesModel {
  final String nomeEquipe;
  final String? descricaoEquipe;
  final String? contatoResponsavel;

  EquipesModel(
      {required this.nomeEquipe,
      this.descricaoEquipe,
      this.contatoResponsavel});

  factory EquipesModel.newInstance() {
    return EquipesModel(
        nomeEquipe: '', descricaoEquipe: null, contatoResponsavel: null);
  }
}
