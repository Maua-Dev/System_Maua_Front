import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_estagio/models/estagios_model.dart';

import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_estagio/repositories/mural_estagios_repository_interface.dart';
import 'package:system_maua_front/app/shared/models/list_panel_model.dart';

part 'mural_estagios_controller.g.dart';

class MuralEstagiosController = _MuralEstagiosControllerBase
    with _$MuralEstagiosController;

abstract class _MuralEstagiosControllerBase with Store {
  IMuralEstagiosRepository repository;

  _MuralEstagiosControllerBase(
    this.repository,
  );

  @observable
  List<EstagiosModel> listaEstagios = List.empty();

  @observable
  List<ListPanelModel> listaPanelEstagios = [];

  @action
  Future<void> getEquipes() async {
    listaEstagios = await repository.getEstagios();
  }

  @action
  void getListaPanelEquipes() {
    var list = <ListPanelModel>[];
    for (var i = 0; i < listaEstagios.length; i++) {
      list.add(ListPanelModel(model: listaEstagios[i]));
    }
    listaPanelEstagios = list;
  }

  @action
  void trocaOpen(int index) {
    var lista = List<ListPanelModel>.from(listaPanelEstagios);
    lista[index].changeStateIsOpen();
    listaPanelEstagios = lista;
  }
}
