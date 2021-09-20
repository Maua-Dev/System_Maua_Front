import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/notas/notas_module.dart';
import 'package:system_maua_front/app/modules/notas/pages/atingir-metas/atingir_metas_controller.dart';
import 'package:system_maua_front/app/modules/notas/pages/atingir-metas/repositories/atingir_metas_repository.dart';

void main() {
  initModule(NotasModule());

  test('[TEST] - Injeção do AtingirMetasController', () {
    var atingirMetasController = Modular.get<AtingirMetasController>();
    expect(atingirMetasController.repository,
        isInstanceOf<AtingirMetasRepository>());
  });
}
