class AulaModel {
  final String nomeAula;
  final String local;
  final String horario;
  final String duracao;

  AulaModel(
      {required this.nomeAula,
      required this.local,
      required this.horario,
      required this.duracao});

  factory AulaModel.newInstance() {
    return AulaModel(duracao: '', horario: '', nomeAula: '', local: '');
  }
}
