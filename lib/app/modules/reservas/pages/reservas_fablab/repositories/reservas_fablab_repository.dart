import 'package:system_maua_front/app/modules/reservas/models/reservas_fablab_model.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas_fablab/enumerates/fablab_enum.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas_fablab/repositories/reservas_fablab_repository_interface.dart';

class ReservasFablabRepository implements IReservasFablabRepository {
  var listaFablab = [
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

  @override
  Future<List<ReservasFablabModel>> retornaListaFablab() {
    return Future.value(listaFablab);
  }
}
