import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/reservas/models/reservas_fablab_model.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas_fablab/repositories/reservas_fablab_repository_interface.dart';


part 'reservas_fablab_controller.g.dart';

class ReservasFablabController = _ReservasFablabControllerBase
    with _$ReservasFablabController;

abstract class _ReservasFablabControllerBase with Store {
  final IReservasFablabRepository repository;

  _ReservasFablabControllerBase({required this.repository}) {
    getFablab();
  }

  @observable
  List<ReservasFablabModel> listaFablab = List.empty();

  @action
  Future<void> getFablab() async {
    listaFablab = await repository.retornaListaFablab();
  }
}