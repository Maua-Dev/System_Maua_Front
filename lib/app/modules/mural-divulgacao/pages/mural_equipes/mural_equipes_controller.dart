import 'package:mobx/mobx.dart';

import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_equipes/models/equipes_model.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_equipes/models/equipes_panel_model.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_equipes/repositories/mural_equipes_repository_interface.dart';

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
  List<EquipesPanelModel> listaPanelEquipes = [];

  @action
  Future<void> getEquipes() async {
    listaEquipes = await repository.getEquipes();
    getListaPanelEquipes();
  }

  @action
  void getListaPanelEquipes() {
    var list = <EquipesPanelModel>[];
    for (var i = 0; i < listaEquipes.length; i++) {
      list.add(EquipesPanelModel(equipes: listaEquipes[i]));
    }
    listaPanelEquipes = list;
  }

  @action
  void trocaOpen(int index) {
    var lista = List<EquipesPanelModel>.from(listaPanelEquipes);
    lista[index].changeStateIsOpen();
    listaPanelEquipes = lista;
  }
}
