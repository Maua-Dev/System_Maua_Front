import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/materias/materias_controller.dart';
import 'package:system_maua_front/app/modules/materias/materias_module.dart';
import 'package:system_maua_front/app/modules/materias/repositories/materias_repository.dart';

void main() {
  initModule(MateriasModule());

  test('[TEST] - Injeção do MateriasController', () {
    var materiasController = Modular.get<MateriasController>();
    expect(materiasController.repository, isInstanceOf<MateriasRepository>());
  });

  test('[TEST] - Injeção do MateriasRepository', () {
    Modular.get<MateriasController>();
  });
}
