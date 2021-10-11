import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/help/pages/help-faq/models/faq_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/pages/faq/controller/faq_intercambio_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/pages/faq/repository/faq_repository_interface.dart';

import 'intercambio_faq_controller_test.mocks.dart';

@GenerateMocks([IFaqIntercambioRepository])
void main() {
  IFaqIntercambioRepository repository = MockIFaqIntercambioRepository();
  late FaqIntercambioController controller;
  var faqTeste = [FaqModel(titulo: 'titulo', descricao: 'descricao')];

  setUpAll(() {
    when(repository.getFaq()).thenAnswer((_) async => faqTeste);
    controller = FaqIntercambioController(repository);
  });

  test('[TEST] - SetFaqAction ', () {
    controller.setFaqAction();
    expect(controller.faqAction.isNotEmpty, true);
  });

  test('[TEST] - TrocaOpen', () {
    controller.trocaOpen(0);
    expect(controller.faqAction[0].isOpen, true);
  });

  test('[TEST] - getListRepository', () async {
    await controller.getListRepository();
    expect(controller.listaFaq.isNotEmpty, true);
  });
}
