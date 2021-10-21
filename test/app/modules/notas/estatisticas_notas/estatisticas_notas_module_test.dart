import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/notas/notas_module.dart';
import 'package:system_maua_front/app/modules/notas/pages/estatisticas/estatisticas_notas_controller.dart';
import 'package:system_maua_front/app/modules/notas/pages/estatisticas/repositories/estatisticas_repository.dart';

void main() {
  initModules([NotasModule()]);

  test('[TEST] - MediasController com MediasRepository', () {
    var estatisticasController = Modular.get<EstatisticasController>();
    expect(estatisticasController.estatisticasRepository,
        isInstanceOf<EstatisticasRepository>());
  });

  test('[TEST] - Injeção do EstatisticasController', () {
    Modular.get<EstatisticasController>();
  });
}
