import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas_fablab/repositories/reservas_fablab_repository.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas_fablab/reservas_fablab_controller.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas_fablab/reservas_fablab_module.dart';

void main() {
  initModule(ReservasFablabModule());

  test('[TEST] - Injeção do ReservasFablabController', () {
    Modular.get<ReservasFablabController>();
  });

  test('[TEST] - Injeção do ReservasFablabRepository', () {
    Modular.get<ReservasFablabRepository>();
  });
}
