import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/repositories/help_estagio_repository.dart';

void main() {
  late HelpEstagioRepository helpEstagioRepository;

  setUpAll(() {
    helpEstagioRepository = HelpEstagioRepository();
  });

  test('[TEST] - getEstagio', () {
    expect(helpEstagioRepository.listaEstagio.isNotEmpty, true);
  });
}
