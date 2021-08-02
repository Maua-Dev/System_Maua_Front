import 'package:intl/intl.dart';

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

  String _capitalize(String value) {
    return '${value[0].toUpperCase()}${value.substring(1)}';
  }

  String get getDiaDaSemana =>
      _capitalize(DateFormat('EEEE').format(dateTime!));

  String get getDataFormatada =>
      _capitalize(DateFormat('dd/MM').format(dateTime!));

  String get getHoraFormatada =>
      _capitalize(DateFormat('hh:mm').format(dateTime!));
}
