class AvaliacaoModel {
  final String titulo;
  final String descricao;
  late final DateTime? dateTime;
  final String horario;

  AvaliacaoModel(
      {required this.titulo,
      required this.descricao,
      this.dateTime,
      required this.horario});

  factory AvaliacaoModel.newInstance() {
    return AvaliacaoModel(
        titulo: '', descricao: '', dateTime: null, horario: '');
  }
}
