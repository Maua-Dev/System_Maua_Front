import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas-quadras/models/reservas_quadra_model.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas-quadras/repositories/reservas_quadras_repository_interface.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas-quadras/reservas_quadras_controller.dart';

import 'reservas_quadras_controller_test.mocks.dart';

@GenerateMocks([IReservasQuadrasRepository])
void main() {
  IReservasQuadrasRepository repository = MockIReservasQuadrasRepository();
  late ReservasQuadrasController controller;
  var quadrasTeste = [
    ReservasQuadrasModel(
      titulo: 'Basquete',
    ),
    ReservasQuadrasModel(
      titulo: 'Futsal',
    ),
    ReservasQuadrasModel(
      titulo: 'Volei',
    ),
    ReservasQuadrasModel(
      titulo: 'Handball',
    ),
    ReservasQuadrasModel(
      titulo: 'Tenis de mesa',
    ),
  ];
  setUpAll(() {
    when(repository.getQuadras()).thenAnswer((_) async => quadrasTeste);
    controller = ReservasQuadrasController(repository: repository);
  });

  test('[TEST] - getQuadras', () async {
    await controller.getQuadras();
    expect(controller.listaQuadras.isNotEmpty, true);
  });
}
