import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/repositories/mural_divulgacao_repository.dart';

void main() {
  late MuralDivulgacaoRepository muralDivulgacaoRepository;

  setUpAll(() {
    muralDivulgacaoRepository = MuralDivulgacaoRepository();
  });

  test('[TEST] - getInformacaoCaNaoLido', () {
    expect(muralDivulgacaoRepository.listInformacao.isNotEmpty, true);
  });
}
