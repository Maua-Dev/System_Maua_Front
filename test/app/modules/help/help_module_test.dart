import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/help/help_module.dart';
import 'package:system_maua_front/app/modules/help/pages/help-avisos/help_avisos_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/help-avisos/repositories/help_avisos_repository.dart';
import 'package:system_maua_front/app/modules/help/pages/help-faq/help_faq_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/help-faq/repositories/help_faq_repository.dart';
import 'package:system_maua_front/app/modules/help/pages/help-softwares/help_softwares_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/help-softwares/repositories/help_softwares_repository.dart';

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

  test('[TEST] - Injeção do HelpSoftwaresController', () {
    Modular.get<HelpSoftwaresController>();
  });

  test('[TEST] - Injeção do HelpSoftwaresRepository', () {
    Modular.get<HelpSoftwaresRepository>();
  });

  test('[TEST] - Injeção do HelpFaqController', () {
    Modular.get<HelpFaqController>();
  });

  test('[TEST] - Injeção do HelpFaqRepository', () {
    Modular.get<HelpFaqRepository>();
  });
}
