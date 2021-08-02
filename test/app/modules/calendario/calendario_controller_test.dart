import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/calendario/calendario_controller.dart';
import 'package:system_maua_front/app/modules/calendario/models/avaliacao_model.dart';
import 'package:system_maua_front/app/modules/calendario/repositories/calendario_repository_interface.dart';

import 'calendario_controller_test.mocks.dart';

@GenerateMocks([ICalendarioRepository])
void main() {
  ICalendarioRepository repository = MockICalendarioRepository();
  late CalendarioController calendarioController;
  var avaliacoesTeste = [
    AvaliacaoModel(titulo: 'Prova Química', horario: '15h', descricao: ''),
    AvaliacaoModel(titulo: 'Prova Química', horario: '15h', descricao: ''),
    AvaliacaoModel(titulo: 'Prova Química', horario: '15h', descricao: ''),
  ];

  setUpAll(() {
    when(repository.getAvaliacoes()).thenAnswer((_) async => avaliacoesTeste);
    calendarioController = CalendarioController(repository);
  });

  test('[TEST] - getAvaliacoes', () async {
    await calendarioController.getAvaliacoes();
    expect(calendarioController.avaliacoes, avaliacoesTeste);
  });

  test('[TEST] - mapEvents', () {
    calendarioController.avaliacoes = [
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
          dateTime: DateTime(2021, 08, 04),
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
    calendarioController.mapEvents();
    expect(calendarioController.markedDateMap.events.isNotEmpty, true);
  });
}
