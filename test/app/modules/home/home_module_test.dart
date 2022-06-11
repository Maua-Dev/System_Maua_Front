import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/home/home_controller.dart';
import 'package:system_maua_front/app/modules/home/home_module.dart';
import 'package:system_maua_front/app/modules/home/repositories/home_repository.dart';

void main() {
  initModule(HomeModule());

  test('[TEST] - Injeção do HomeAlunoController', () {
    var homeAlunoController = Modular.get<HomeController>();
    expect(homeAlunoController.repository, isInstanceOf<HomeRepository>());
  });

  test('[TEST] - Injeção do HomeAlunoRepository', () {
    Modular.get<HomeController>();
  });
}
