import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/reservas/models/reservas_model.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas-quadras/enumerates/esportes_enum.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas-quadras/repositories/reservas_quadras_repository_interface.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas-quadras/reservas_quadras_controller.dart';

import 'reservas_quadras_controller_test.mocks.dart';

@GenerateMocks([IReservasQuadrasRepository])
void main() {
  IReservasQuadrasRepository repository = MockIReservasQuadrasRepository();
  late ReservasQuadrasController controller;
  var quadrasTeste = [
    ReservasQuadraModel(
      dataReserva: '18/12/1999',
      horarioReserva: '18:12',
      tipoEsporte: EsportesEnum.FUTSAL,
    ),
    ReservasQuadraModel(
      dataReserva: '18/12/1999',
      horarioReserva: '18:12',
      tipoEsporte: EsportesEnum.FUTSAL,
    ),
    ReservasQuadraModel(
      dataReserva: '18/12/1999',
      horarioReserva: '18:12',
      tipoEsporte: EsportesEnum.FUTSAL,
    ),
    ReservasQuadraModel(
      dataReserva: '18/12/1999',
      horarioReserva: '18:12',
      tipoEsporte: EsportesEnum.FUTSAL,
    ),
    ReservasQuadraModel(
      dataReserva: '18/12/1999',
      horarioReserva: '18:12',
      tipoEsporte: EsportesEnum.FUTSAL,
    ),
  ];
  setUpAll(() {
    when(repository.retornaListaQuadras())
        .thenAnswer((_) async => quadrasTeste);
    controller = ReservasQuadrasController(repository: repository);
  });

  test('[TEST] - getQuadras', () async {
    await controller.getQuadras();
    expect(controller.listaQuadras.isNotEmpty, true);
  });
}
