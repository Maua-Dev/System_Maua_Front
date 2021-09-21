class HelpEstagioModel {
  final String nome;
  final String? descricao;

  HelpEstagioModel({required this.nome, this.descricao});

  factory HelpEstagioModel.newInstance() {
    return HelpEstagioModel(nome: '', descricao: '');
  }
}