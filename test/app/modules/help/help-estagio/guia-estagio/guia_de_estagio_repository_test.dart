import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/page/guia-de-estagio/repositories/guia_de_estagio_repository.dart';

void main() {
  late GuiaEstagioRepository guiaEstagioRepository;

  setUpAll(() {
    guiaEstagioRepository = GuiaEstagioRepository();
  });

  test('[TEST] - getGuiaEstagio', () {
    expect(guiaEstagioRepository.listaGuiaEstagio.isNotEmpty, true);
  });
}
