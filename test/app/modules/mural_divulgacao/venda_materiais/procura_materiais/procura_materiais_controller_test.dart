import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/venda_materiais/pages/procura_materias/procura_materiais_controller.dart';

void main() {
  late ProcuraMateriaisController procuraMateriaisController;

  setUpAll(() {
    procuraMateriaisController = ProcuraMateriaisController();
  });

  test('[TEST] - getListaMateriais', () async {
    procuraMateriaisController.getListaMateriais();
    expect(procuraMateriaisController.listaMateriais.isNotEmpty, true);
  });

  test('[TEST] - setMaterial', () {
    var value = 'teste';
    procuraMateriaisController.setMaterial(value);
    expect(procuraMateriaisController.material, value);
  });
}
