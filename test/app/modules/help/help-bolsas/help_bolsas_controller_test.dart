import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/help/pages/help-bolsas/help_bolsas_controller.dart';

void main() {
  var controller = HelpBolsasController();

  test('[TEST] - trocaOpen', () {
    controller.trocaOpen(0);
    expect(controller.isOpen[0], true);
  });
}
