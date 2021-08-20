import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/help/pages/help-avisos/help_avisos_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/help-avisos/models/avisos_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-avisos/repositories/help_avisos_repository_interface.dart';

import 'help_avisos_controller_test.mocks.dart';

@GenerateMocks([IHelpAvisosRepository])
void main() {
  IHelpAvisosRepository repository = MockIHelpAvisosRepository();
  late HelpAvisosController controller;
  var avisosTeste = [
    AvisosModel(
        data: '33/07',
        titulo: 'Comunicado sobre as Provas',
        descricao: 'INFORMAMOS QUE DEVIDO AO CODIV AS PROVAS...'),
    AvisosModel(
        data: '23/08',
        titulo: 'Comunicado sobre O retorno as aulas',
        descricao: 'Bora voltar meu povo...')
  ];
  setUpAll(() {
    when(repository.getInformacaoAvisos()).thenAnswer((_) async => avisosTeste);
    controller = HelpAvisosController(repository);
  });

  test('[TEST] - getInformacoesAvisos', () async {
    await controller.getInformacaoAvisos();
    expect(controller.avisos.isNotEmpty, true);
  });

  test('[TEST] - trocaOpen', () {
    controller.trocaOpen(0);
    expect(controller.avisosAction[0].isOpen, true);
  });

  test('[TEST] - setAvisosAction', () async {
    controller.setAvisosAction();
    expect(controller.avisosAction.isNotEmpty, true);
  });
}
