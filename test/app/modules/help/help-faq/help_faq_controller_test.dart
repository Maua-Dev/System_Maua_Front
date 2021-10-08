import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/help/pages/help-faq/help_faq_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/help-faq/models/faq_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-faq/repositories/help_faq_repository_interface.dart';

import 'help_faq_controller_test.mocks.dart';

@GenerateMocks([IHelpFaqRepository])
void main() {
  IHelpFaqRepository repository = MockIHelpFaqRepository();
  late HelpFaqController controller;
  var faqTeste = [
    FaqModel(
        titulo: 'Perguntas frequentes',
        descricao: 'Temos como trocar de grupo?\n'
            'Uma resposta aqui\n\n'
            'Quando começam as PAEs?\n'
            'Uma resposta aqui\n\n'
            'Como reservar a quadra?\n'
            'Uma resposta aqui'),
    FaqModel(
        titulo: 'Perguntas sobre eventos',
        descricao: 'Quando é o proximo grande evento?\n'
            'Sei la'),
    FaqModel(
        titulo: 'Perguntas sobre horários',
        descricao: 'Quando posso matar aula?\n'
            'Sempre'),
    FaqModel(
        titulo: 'Perguntas sobre locais',
        descricao: 'Onde fica o bloco y?\n'
            'Sim'),
  ];
  setUpAll(() {
    when(repository.getInformacaoFaq()).thenAnswer((_) async => faqTeste);
    controller = HelpFaqController(repository);
  });

  test('[TEST] - getInformacoesFaq', () async {
    await controller.getInformacaoFaq();
    expect(controller.faq.isNotEmpty, true);
  });

  test('[TEST] - trocaOpen', () {
    controller.trocaOpen(0);
    expect(controller.faqAction[0].isOpen, true);
  });

  test('[TEST] - setFaqAction', () async {
    controller.setFaqAction();
    expect(controller.faqAction.isNotEmpty, true);
  });
}
