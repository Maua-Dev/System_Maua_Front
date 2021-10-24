import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/notas/pages/atividades/repositories/atividades_repository.dart';

void main() {
  late AtividadesRepository atividadesRepository;

  setUpAll(() {
    atividadesRepository = AtividadesRepository();
  });

  test('[TEST] - atingirMetasRepository', () {
    expect(atividadesRepository.atividades.isNotEmpty, true);
  });
}
