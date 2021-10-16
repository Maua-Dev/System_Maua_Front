import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas-quadras/repositories/reservas_quadras_repository.dart';

void main() {
  late ReservasQuadrasRepository reservasQuadrasRepository;

  setUpAll(() {
    reservasQuadrasRepository = ReservasQuadrasRepository();
  });

  test('[TEST] - getQuadras', () {
    expect(reservasQuadrasRepository.listaQuadras.isNotEmpty, true);
  });
}
