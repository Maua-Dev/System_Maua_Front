import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/calendario/calendario_controller.dart';
import 'package:system_maua_front/app/modules/calendario/calendario_module.dart';
import 'package:system_maua_front/app/modules/calendario/repositories/calendario_repository.dart';

void main() {
  initModule(CalendarioModule());

  test('[TEST] - Injeção do CalendarioController', () {
    var calendarioController = Modular.get<CalendarioController>();
    expect(calendarioController.repository, isInstanceOf<CalendarRepository>());
  });

  test('[TEST] - Injeção do CalendarioRepository', () {
    Modular.get<CalendarioController>();
  });
}
