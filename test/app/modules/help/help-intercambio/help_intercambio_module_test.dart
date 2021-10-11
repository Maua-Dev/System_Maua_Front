import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/help_intercambio_module.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/pages/faq/controller/faq_intercambio_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/pages/faq/repository/faq_repository.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/pages/oportunidades_abertas/controller/oportunidade_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/pages/oportunidades_abertas/repository/oportunidade_repository.dart';

void main() {
  initModule(HelpIntercambioModule());

  test('[TEST] - Injeção do OportunidadeRepository ', () {
    Modular.get<OportunidadeRepository>();
  });

  test('[TEST] - Injeção do OportunidadeController', () {
    var oportunidadeController = Modular.get<OportunidadeController>();
    expect(oportunidadeController.repository,
        isInstanceOf<OportunidadeRepository>());
  });

  test('[TEST] - Injeção do FaqIntercambioRepository ', () {
    Modular.get<FaqIntercambioRepository>();
  });

  test('[TEST] - Injeção do FaqIntercambioController', () {
    var faqController = Modular.get<FaqIntercambioController>();
    expect(faqController.repository, isInstanceOf<FaqIntercambioRepository>());
  });
}
