class GuiaEstagioModel {
  final String nomePasso;
  final String descricaoPasso;

  GuiaEstagioModel(
  {required this.nomePasso,
  required this.descricaoPasso});

  factory GuiaEstagioModel.newInstance() {
    return GuiaEstagioModel(nomePasso: '', descricaoPasso: '');
  }
}