import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas-quadras/repositories/reservas_quadras_repository.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas-quadras/reservas_quadras_controller.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas-quadras/reservas_quadras_module.dart';

void main() {
  initModule(ReservasQuadrasModule());

  test('[TEST] - Injeção do ReservasQuadrasController', () {
    Modular.get<ReservasQuadrasController>();
  });

  test('[TEST] - Injeção do ReservasQuadrasRepository', () {
    Modular.get<ReservasQuadrasRepository>();
  });
}