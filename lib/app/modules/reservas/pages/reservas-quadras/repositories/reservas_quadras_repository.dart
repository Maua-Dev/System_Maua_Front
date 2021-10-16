import 'package:system_maua_front/app/modules/reservas/pages/reservas-quadras/models/reservas_quadra_model.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas-quadras/repositories/reservas_quadras_repository_interface.dart';

class ReservasQuadrasRepository implements IReservasQuadrasRepository {
  var listaQuadras = [
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
  @override
  Future<List<ReservasQuadrasModel>> getQuadras() async {
    return Future.value(listaQuadras);
  }
}
