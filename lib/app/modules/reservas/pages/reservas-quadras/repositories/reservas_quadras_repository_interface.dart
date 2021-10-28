import 'package:system_maua_front/app/modules/reservas/models/reservas_model.dart';

abstract class IReservasQuadrasRepository {
  Future<List<ReservasQuadraModel>> retornaListaQuadras();
}
