import 'package:intl/intl.dart';
import 'package:system_maua_front/app/modules/calendario/enumerates/evento_enum.dart';

class EventoModel {
  final String titulo;
  final String descricao;
  late final DateTime? dateTime;
  final String horario;
  final EventoEnum tipoEventoEnum;

  EventoModel(
      {required this.tipoEventoEnum,
      required this.titulo,
      required this.descricao,
      this.dateTime,
      required this.horario});

  factory EventoModel.newInstance() {
    return EventoModel(
        titulo: '',
        descricao: '',
        dateTime: null,
        horario: '',
        tipoEventoEnum: EventoEnum.OUTRO);
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
