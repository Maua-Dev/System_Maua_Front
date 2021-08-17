import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/help-avisos/help_avisos_controller.dart';
import 'package:system_maua_front/app/modules/help-avisos/help_avisos_module.dart';
import 'package:system_maua_front/app/modules/help-avisos/repositories/help_avisos_repository.dart';

void main() {
  initModule(HelpAvisosModule());
  test('[TEST] - Injeção do HelpAvisosController', () {
    var helpAvisosController = Modular.get<HelpAvisosController>();
    expect(
        helpAvisosController.repository, isInstanceOf<HelpAvisosRepository>());
  });

  test('[TEST] - Injeção do HelpAvisosRepository', () {
    Modular.get<HelpAvisosController>();
  });
}
