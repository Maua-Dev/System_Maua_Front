class EquipesModel {
  final String nomeEquipe;
  final String? descricaoEquipe;

  EquipesModel({required this.nomeEquipe, this.descricaoEquipe});

  factory EquipesModel.newInstance() {
    return EquipesModel(nomeEquipe: '', descricaoEquipe: '');
  }
}
