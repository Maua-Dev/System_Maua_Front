import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/help/help_module.dart';
import 'package:system_maua_front/app/modules/help/pages/help-avisos/help_avisos_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/help-avisos/repositories/help_avisos_repository.dart';
import 'package:system_maua_front/app/modules/help/pages/help-bolsas/help_bolsas_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/help-softwares/help_softwares_controller.dart';

void main() {
  initModule(HelpModule());

  test('[TEST] - Injeção do HelpAvisosController', () {
    var homeAlunoController = Modular.get<HelpAvisosController>();
    expect(
        homeAlunoController.repository, isInstanceOf<HelpAvisosRepository>());
  });

  test('[TEST] - Injeção do HelpAvisosRepository', () {
    Modular.get<HelpAvisosRepository>();
  });

  test('[TEST] - Injeção do HelpBolsasController', () {
    Modular.get<HelpBolsasController>();
  });

  test('[TEST] - Injeção do HelpSoftwaresController', () {
    Modular.get<HelpSoftwaresController>();
  });
}
