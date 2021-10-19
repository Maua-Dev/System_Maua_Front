import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/reservas/models/reservas_fablab_model.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas_fablab/enumerates/fablab_enum.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas_fablab/repositories/reservas_fablab_repository_interface.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas_fablab/reservas_fablab_controller.dart';

import 'reservas_fablab_controller_test.mocks.dart';

@GenerateMocks([IReservasFablabRepository])
void main() {
  IReservasFablabRepository repository = MockIReservasFablabRepository();
  late ReservasFablabController controller;
  var fablabTeste = [
    ReservasFablabModel(
      dataReserva: '18/12/1999',
      horarioReserva: '18:12',
      tipoFablab: FablabEnum.CORTELASER,
    ),
    ReservasFablabModel(
      dataReserva: '18/12/1999',
      horarioReserva: '18:12',
      tipoFablab: FablabEnum.CORTELASER,
    ),
    ReservasFablabModel(
      dataReserva: '18/12/1999',
      horarioReserva: '18:12',
      tipoFablab: FablabEnum.CORTELASER,
    ),
    ReservasFablabModel(
      dataReserva: '18/12/1999',
      horarioReserva: '18:12',
      tipoFablab: FablabEnum.CORTELASER,
    ),
  ];
  setUpAll(() {
    when(repository.retornaListaFablab()).thenAnswer((_) async => fablabTeste);
    controller = ReservasFablabController(repository: repository);
  });

  test('[TEST] - getFablab', () async {
    await controller.getFablab();
    expect(controller.listaFablab.isNotEmpty, true);
  });
}
