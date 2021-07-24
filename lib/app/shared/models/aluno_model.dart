class AlunoModel {
  final String nome;
  final String ra;

  AlunoModel({required this.nome, required this.ra});

  factory AlunoModel.newInstance() {
    return AlunoModel(nome: '', ra: '');
  }
}