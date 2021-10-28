import 'package:system_maua_front/app/modules/reservas/models/reservas_model.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas-quadras/enumerates/esportes_enum.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas-quadras/repositories/reservas_quadras_repository_interface.dart';

class ReservasQuadrasRepository implements IReservasQuadrasRepository {
  var listaQuadras = [
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

  @override
  Future<List<ReservasQuadraModel>> retornaListaQuadras() {
    return Future.value(listaQuadras);
  }
}
