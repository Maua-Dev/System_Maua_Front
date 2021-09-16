import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_equipes/repositories/mural_equipes_repository.dart';

void main() {
  late MuralEquipesRepository muralEquipesRepository;

  setUpAll(() {
    muralEquipesRepository = MuralEquipesRepository();
  });

  test('[TEST] - getEquipes', () {
    expect(muralEquipesRepository.listaEquipes.isNotEmpty, true);
  });
}
