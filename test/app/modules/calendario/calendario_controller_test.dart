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
    AvaliacaoModel(titulo: 'Prova Química', horario: '15h'),
    AvaliacaoModel(titulo: 'Prova Química', horario: '15h'),
    AvaliacaoModel(titulo: 'Prova Química', horario: '15h'),
  ];

  setUpAll(() {
    when(repository.getAvaliacoes()).thenAnswer((_) async => avaliacoesTeste);
    calendarioController = CalendarioController(repository);
  });

  test('[TEST] - getAluno', () async {
    await calendarioController.getAvaliacoes();
    expect(calendarioController.avaliacoes, avaliacoesTeste);
  });
}
