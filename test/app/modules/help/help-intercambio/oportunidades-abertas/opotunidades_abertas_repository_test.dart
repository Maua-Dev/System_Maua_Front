import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/pages/oportunidades_abertas/repository/oportunidade_repository.dart';

void main() {
  late OportunidadeRepository oportunidadeRepository;

  setUpAll(() {
    oportunidadeRepository = OportunidadeRepository();
  });

  test('[TEST] - getUniversidade', () {
    expect(oportunidadeRepository.listaDeUniversidade.isNotEmpty, true);
  });
}
