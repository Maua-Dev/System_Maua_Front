import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/ic/ic_controller.dart';
import 'package:system_maua_front/app/modules/ic/ic_module.dart';
import 'package:system_maua_front/app/modules/ic/repositories/ic_repository.dart';

void main() {
  initModule(IcModule());

  test('[TEST] - Injeção do IcController', () {
    var controller = Modular.get<IcController>();
    expect(controller.repository, isInstanceOf<IcRepository>());
  });

  test('[TEST] - Injeção do IcRepository', () {
    Modular.get<IcRepository>();
  });
}
