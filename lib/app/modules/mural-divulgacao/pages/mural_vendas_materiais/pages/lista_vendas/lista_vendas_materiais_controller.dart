import 'package:mobx/mobx.dart';

import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/models/vendas_materiais_model.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/repositories/mural_vendas_materiais_repository_interface.dart';
import 'package:system_maua_front/app/shared/models/list_panel_model.dart';

part 'lista_vendas_materiais_controller.g.dart';

class ListaVendasMateriaisController = _ListaVendasMateriaisControllerBase
    with _$ListaVendasMateriaisController;

abstract class _ListaVendasMateriaisControllerBase with Store {
  IMuralVendasMateriaisRepository? repository;

  _ListaVendasMateriaisControllerBase(
    this.repository,
  ) {
    getVendas();
  }

  @observable
  List<VendasMateriaisModel> listaVendas = List.empty();

  @observable
  List<ListPanelModel<VendasMateriaisModel>> listaPanelVendas = [];

  @action
  Future<void> getVendas() async {
    listaVendas = await repository!.getVendas();
    getListaPanelVendasMateriais();
  }

  @action
  void getListaPanelVendasMateriais() {
    var list = <ListPanelModel<VendasMateriaisModel>>[];
    for (var i = 0; i < listaVendas.length; i++) {
      list.add(ListPanelModel(model: listaVendas[i]));
    }
    listaPanelVendas = list;
  }

  @action
  void trocaOpen(int index) {
    var lista =
        List<ListPanelModel<VendasMateriaisModel>>.from(listaPanelVendas);
    lista[index].changeStateIsOpen();
    listaPanelVendas = lista;
  }
}
