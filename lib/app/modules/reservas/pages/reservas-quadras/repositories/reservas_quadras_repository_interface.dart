import 'package:system_maua_front/app/modules/reservas/pages/reservas-quadras/models/reservas_quadra_model.dart';

abstract class IReservasQuadrasRepository {
  Future<List<ReservasQuadrasModel>> getQuadras();
}
