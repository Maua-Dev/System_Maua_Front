import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/mural_divulgacao_controller.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/mural_divulgacao_module.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/repositories/mural_divulgacao_repository.dart';

void main() {
  initModule(MuralDivulgacaoModule());

  test('[TEST] - Injeção do muralDivulgacaoController', () {
    var muralDivulgacaoController = Modular.get<MuralDivulgacaoController>();
    expect(muralDivulgacaoController.repository,
        isInstanceOf<MuralDivulgacaoRepository>());
  });

  test('[TEST] - Injeção do MuralDivulgacaoRepository', () {
    Modular.get<MuralDivulgacaoController>();
  });
}
