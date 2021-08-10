import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/calendario/calendario_controller.dart';
import 'package:system_maua_front/app/modules/calendario/enumerates/evento_enum.dart';
import 'package:system_maua_front/app/modules/calendario/models/evento_model.dart';
import 'package:system_maua_front/app/modules/calendario/repositories/calendario_repository_interface.dart';

import 'calendario_controller_test.mocks.dart';

@GenerateMocks([ICalendarioRepository])
void main() {
  ICalendarioRepository repository = MockICalendarioRepository();
  late CalendarioController calendarioController;
  var avaliacoesTeste = [
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

  var dateTimeTeste = DateTime(2021, 11, 20);

  setUpAll(() {
    when(repository.getAvaliacoes()).thenAnswer((_) async => avaliacoesTeste);
    calendarioController = CalendarioController(repository);
  });

  test('[TEST] - getAvaliacoes', () async {
    expect(calendarioController.avaliacoes, avaliacoesTeste);
  });

  test('[TEST] - setListaEventos', () async {
    calendarioController.setDate(DateTime(2021, 08, 03));
    calendarioController.setListaEventos();
    expect(calendarioController.listEventoPanel.isNotEmpty, true);
  });

  test('[TEST] - trocaOpen', () {
    calendarioController.setDate(DateTime(2021, 08, 03));
    calendarioController.setListaEventos();
    calendarioController.trocaOpen(0);
    expect(calendarioController.listEventoPanel[0].isOpen, true);
  });

  test('[TEST] - mapEvents', () {
    calendarioController.mapEvents();
    expect(calendarioController.markedDateMap.events.isNotEmpty, true);
  });

  test('[TEST] - setDate', () {
    calendarioController.setDate(dateTimeTeste);
    expect(calendarioController.selectedDateTime, dateTimeTeste);
  });
}
