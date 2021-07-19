import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/home-aluno/home_aluno_controller.dart';
import 'package:system_maua_front/app/modules/home-aluno/home_aluno_module.dart';
import 'package:system_maua_front/app/modules/home-aluno/repositories/home_aluno_repository.dart';

void main() {
  initModule(HomeAlunoModule());

  test('[TEST] - Injeção do HomeAlunoController', () {
    var homeAlunoController = Modular.get<HomeAlunoController>();
    expect(homeAlunoController.repository, isInstanceOf<HomeAlunoRepository>());
  });

  test('[TEST] - Injeção do HomeAlunoRepository', () {
    Modular.get<HomeAlunoController>();
  });
}
