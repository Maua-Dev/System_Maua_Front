import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/models/vendas_materiais_model.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/models/vendas_materiais_panel_model.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/repositories/mural_vendas_materiais_repository_interface.dart';

part 'mural_vendas_materiais_controller.g.dart';

class MuralVendasMateriaisController = _MuralVendasMateriaisControllerBase
    with _$MuralVendasMateriaisController;

abstract class _MuralVendasMateriaisControllerBase with Store {
  ImuralVendasMateriaisRepository? repository;

  _MuralVendasMateriaisControllerBase(
    this.repository,
  );

  @observable
  List<VendasMateriaisModel> listaVendas = List.empty();

  @observable
  List<VendasMateriaisPanelModel>listaPanelVendasMateriais = [];

  @action
  Future<void> getVendas() async {
    listaVendas = await repository!.getVendas();
    getListaPanelVendasMateriais();
  }

  @action
  void getListaPanelVendasMateriais() {
    var list = <VendasMateriaisPanelModel>[];
    for (var i = 0; i < listaVendas.length; i++) {
      //list.add(VendasMateriaisPanelModel(vendas: listaVendas[i]));
    }
    listaPanelVendasMateriais = list;
  }

  @action
  void trocaOpen(int index) {
    var lista = List<VendasMateriaisPanelModel>.from(listaPanelVendasMateriais);
    lista[index].changeStateIsOpen();
    listaPanelVendasMateriais = lista;
  }





  

}