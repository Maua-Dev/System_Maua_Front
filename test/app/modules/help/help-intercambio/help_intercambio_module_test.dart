import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/help_intercambio_module.dart';
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
}
