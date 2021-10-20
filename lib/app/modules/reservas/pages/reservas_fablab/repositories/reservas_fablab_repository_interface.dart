import 'package:system_maua_front/app/modules/reservas/models/reservas_fablab_model.dart';

abstract class IReservasFablabRepository {
  Future<List<ReservasFablabModel>> retornaListaFablab();
}
