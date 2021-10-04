import 'package:mobx/mobx.dart';

import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_equipes/models/equipes_model.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_equipes/repositories/mural_equipes_repository_interface.dart';
import 'package:system_maua_front/app/shared/models/list_panel_model.dart';

part 'mural_equipes_controller.g.dart';

class MuralEquipesController = _MuralEquipesControllerBase
    with _$MuralEquipesController;

abstract class _MuralEquipesControllerBase with Store {
  IMuralEquipesRepository repository;

  _MuralEquipesControllerBase(
    this.repository,
  ) {
    getEquipes();
  }

  @observable
  List<EquipesModel> listaEquipes = List.empty();

  @observable
  List<ListPanelModel<EquipesModel>> listaPanelEquipes = [];

  @action
  Future<void> getEquipes() async {
    listaEquipes = await repository.getEquipes();
    getListaPanelEquipes();
  }

  @action
  void getListaPanelEquipes() {
    var list = <ListPanelModel<EquipesModel>>[];
    for (var i = 0; i < listaEquipes.length; i++) {
      list.add(ListPanelModel(model: listaEquipes[i]));
    }
    listaPanelEquipes = list;
  }

  @action
  void trocaOpen(int index) {
    var lista = List<ListPanelModel<EquipesModel>>.from(listaPanelEquipes);
    lista[index].changeStateIsOpen();
    listaPanelEquipes = lista;
  }
}
