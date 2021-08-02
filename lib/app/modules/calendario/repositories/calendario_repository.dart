import 'package:system_maua_front/app/modules/calendario/models/avaliacao_model.dart';
import 'package:system_maua_front/app/modules/calendario/repositories/calendario_repository_interface.dart';

class CalendarRepository implements ICalendarioRepository {
  List<AvaliacaoModel> listaAvaliacoes = [
    AvaliacaoModel(
        titulo: 'Prova de Física II',
        descricao: 'Sala H205, Matéria: Hidrostática',
        dateTime: DateTime(2021, 08, 02),
        horario: '13h'),
    AvaliacaoModel(
        titulo: 'Prova de Física II',
        descricao: 'Sala H205, Matéria: Hidrostática',
        dateTime: DateTime(2021, 08, 03),
        horario: '13h'),
    AvaliacaoModel(
        titulo: 'Prova de Física II',
        descricao: 'Sala H205, Matéria: Hidrostática',
        dateTime: DateTime(2021, 08, 03),
        horario: '13h'),
    AvaliacaoModel(
        titulo: 'Prova de Física II',
        descricao: 'Sala H205, Matéria: Hidrostática',
        dateTime: DateTime(2021, 08, 05),
        horario: '13h'),
    AvaliacaoModel(
        titulo: 'Prova de Física II',
        descricao: 'Sala H205, Matéria: Hidrostática',
        dateTime: DateTime(2021, 08, 06),
        horario: '13h'),
  ];

  @override
  Future<List<AvaliacaoModel>> getAvaliacoes() {
    return Future.value(listaAvaliacoes);
  }
}
