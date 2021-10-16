import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas-quadras/repositories/reservas_quadras_repository_interface.dart';

import 'models/reservas_quadra_model.dart';

part 'reservas_quadras_controller.g.dart';

class ReservasQuadrasController = _ReservasQuadrasControllerBase
    with _$ReservasQuadrasController;

abstract class _ReservasQuadrasControllerBase with Store {
  final IReservasQuadrasRepository repository;

  _ReservasQuadrasControllerBase({required this.repository}) {
    getQuadras();
  }

  @observable
  List<ReservasQuadrasModel> listaQuadras = List.empty();

  @action
  Future<void> getQuadras() async {
    listaQuadras = await repository.getQuadras();
  }
}
