import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_estagio/repositories/mural_estagios_repository.dart';

void main() {
  late MuralEstagiosRepository muralEstagiosRepository;

  setUpAll(() {
    muralEstagiosRepository = MuralEstagiosRepository();
  });

  test('[TEST] - getEstagios', () {
    expect(muralEstagiosRepository.estagios.isNotEmpty, true);
  });
}
