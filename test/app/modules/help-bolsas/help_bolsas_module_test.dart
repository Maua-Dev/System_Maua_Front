import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/help-bolsas/help_bolsas_controller.dart';
import 'package:system_maua_front/app/modules/help-bolsas/help_bolsas_module.dart';

void main() {
  initModule(HelpBolsasModule());
  test('[TEST] - Bind - HelpBolsasController', () {
    Modular.get<HelpBolsasController>();
  });
}
