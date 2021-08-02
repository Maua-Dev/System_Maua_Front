import 'package:system_maua_front/app/modules/calendario/models/avaliacao_model.dart';
import 'package:system_maua_front/app/modules/calendario/repositories/calendario_repository_interface.dart';

class CalendarRepository implements ICalendarioRepository {
  var listaAvaliacoes = [
    AvaliacaoModel(
        titulo: 'Prova de Física II',
        descricao: 'Sala H205, Matéria: Hidrostática',
        dateTime: DateTime.utc(2021, 08, 02),
        horario: '13h'),
    AvaliacaoModel(
        titulo: 'Prova de Física II',
        descricao: 'Sala H205, Matéria: Hidrostática',
        dateTime: DateTime.utc(2021, 08, 02),
        horario: '13h'),
    AvaliacaoModel(
        titulo: 'Prova de Física II',
        descricao: 'Sala H205, Matéria: Hidrostática',
        dateTime: DateTime.utc(2021, 08, 02),
        horario: '13h'),
    AvaliacaoModel(
        titulo: 'Prova de Física II',
        descricao: 'Sala H205, Matéria: Hidrostática',
        dateTime: DateTime.utc(2021, 08, 02),
        horario: '13h'),
    AvaliacaoModel(
        titulo: 'Prova de Física II',
        descricao: 'Sala H205, Matéria: Hidrostática',
        dateTime: DateTime.utc(2021, 08, 02),
        horario: '13h'),
  ];

  @override
  Future<List<AvaliacaoModel>> getAvaliacoes() {
    return Future.value(listaAvaliacoes);
  }
}
