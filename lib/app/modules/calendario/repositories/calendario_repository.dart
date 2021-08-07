import 'package:system_maua_front/app/modules/calendario/enumerates/evento_enum.dart';
import 'package:system_maua_front/app/modules/calendario/models/evento_model.dart';
import 'package:system_maua_front/app/modules/calendario/repositories/calendario_repository_interface.dart';

class CalendarRepository implements ICalendarioRepository {
  List<EventoModel> listaAvaliacoes = [
    EventoModel(
        titulo: 'Atividade II Moodle dale',
        descricao: 'Sala H205, Matéria: Hidrostática',
        dateTime: DateTime(2021, 08, 02),
        horario: '13h',
        tipoEventoEnum: EventoEnum.CURSO),
    EventoModel(
        titulo: 'Prova de Física II',
        descricao:
            'Sala H205, Matéria: Hidrostática Sala H205, Matéria: Hidrostática Sala H205, Matéria: Hidrostática Sala H205, Matéria: Hidrostática Sala H205, Matéria: Hidrostática',
        dateTime: DateTime(2021, 08, 03),
        horario: '13h',
        tipoEventoEnum: EventoEnum.CURSO),
    EventoModel(
        titulo: 'Prova de Física II',
        descricao: 'Sala H205, Matéria: Hidrostática',
        dateTime: DateTime(2021, 08, 03),
        horario: '13h',
        tipoEventoEnum: EventoEnum.SITE),
    EventoModel(
        titulo: 'Prova de Física II',
        descricao: 'Sala H205, Matéria: Hidrostática',
        dateTime: DateTime(2021, 08, 03),
        horario: '13h',
        tipoEventoEnum: EventoEnum.SITE),
    EventoModel(
        titulo: 'Prova de Física II',
        descricao: 'Sala H205, Matéria: Hidrostática',
        dateTime: DateTime(2021, 08, 05),
        horario: '13h',
        tipoEventoEnum: EventoEnum.GRUPO),
    EventoModel(
        titulo: 'Prova de Física II',
        descricao: 'Sala H205, Matéria: Hidrostática',
        dateTime: DateTime(2021, 08, 03),
        horario: '13h',
        tipoEventoEnum: EventoEnum.SITE),
    EventoModel(
        titulo: 'Prova de Física II',
        descricao: 'Sala H205, Matéria: Hidrostática',
        dateTime: DateTime(2021, 08, 06),
        horario: '13h',
        tipoEventoEnum: EventoEnum.CATEGORIA),
  ];

  @override
  Future<List<EventoModel>> getAvaliacoes() {
    return Future.value(listaAvaliacoes);
  }
}
