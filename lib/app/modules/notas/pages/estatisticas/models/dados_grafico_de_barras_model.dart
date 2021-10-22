class DadoGraficoDeBarrasModel {
  final String nota;
  final int quantidadeAlunos;

  DadoGraficoDeBarrasModel(
      {required this.nota, required this.quantidadeAlunos});
}

class DadosGraficoDeBarrasModel {
  final List<DadoGraficoDeBarrasModel> dados;

  DadosGraficoDeBarrasModel({required this.dados});

  factory DadosGraficoDeBarrasModel.newInstance() {
    return DadosGraficoDeBarrasModel(dados: []);
  }
}
