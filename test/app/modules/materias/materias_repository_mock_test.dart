import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/materias/repositories/materias_repository.dart';

void main() {
  late MateriasRepository materiasRepository;

  setUpAll(() {
    materiasRepository = MateriasRepository();
  });

  test('[TEST] - getMaterias', () {
    expect(materiasRepository.listaMaterias.isNotEmpty, true);
  });
}
