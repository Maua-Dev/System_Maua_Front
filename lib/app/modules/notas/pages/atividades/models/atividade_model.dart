class AtividadeModel {
  final String nomeAtividade;
  final bool entregue;
  final double nota;

  AtividadeModel({
    required this.nomeAtividade,
    required this.entregue,
    required this.nota,
  });

  factory AtividadeModel.newInstance() {
    return AtividadeModel(nomeAtividade: '', entregue: false, nota: 0);
  }
}
