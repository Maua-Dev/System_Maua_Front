import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/notas/pages/atividades/repositories/atividades_repository.dart';

void main() {
  late AtividadesRepository atividadesRepository;

  setUpAll(() {
    atividadesRepository = AtividadesRepository();
  });

  test('[TEST] - atividadesRepository - Atividades', () {
    expect(atividadesRepository.atividades.isNotEmpty, true);
  });

  test('[TEST] - atividadesRepository - Media de atividades', () {
    expect(atividadesRepository.mediaDeAtividades, 7.0);
  });
}
