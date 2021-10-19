import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas_fablab/repositories/reservas_fablab_repository.dart';

void main() {
  late ReservasFablabRepository reservasFablabRepository;

  setUpAll(() {
    reservasFablabRepository = ReservasFablabRepository();
  });

  test('[TEST] - getFablab', () {
    expect(reservasFablabRepository.listaFablab.isNotEmpty, true);
  });
}
