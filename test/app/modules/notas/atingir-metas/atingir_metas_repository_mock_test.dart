import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/notas/pages/atingir-metas/repositories/atingir_metas_repository.dart';

void main() {
  late AtingirMetasRepository atingirMetasRepository;

  setUpAll(() {
    atingirMetasRepository = AtingirMetasRepository();
  });

  test('[TEST] - atingirMetasRepository', () {
    expect(atingirMetasRepository.materia.provas.isNotEmpty, true);
    expect(atingirMetasRepository.materia.trabalhos.isNotEmpty, true);
    expect(atingirMetasRepository.notasCalculadas.provas.isNotEmpty, true);
    expect(atingirMetasRepository.notasCalculadas.trabalhos.isNotEmpty, true);
  });
}
