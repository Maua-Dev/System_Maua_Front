import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/page/guia-de-estagio/models/guia_de_estagio_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/page/guia-de-estagio/models/guia_de_estagio_panel_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/page/guia-de-estagio/repositories/guia_de_estagio_repository_interface.dart';

part 'guia_de_estagio_controller.g.dart';

class GuiaEstagioController = _GuiaEstagioControllerBase
    with _$GuiaEstagioController;

abstract class _GuiaEstagioControllerBase with Store {
  IGuiaEstagioRepository repository;

  _GuiaEstagioControllerBase(
    this.repository,
  ) {
    getGuiaEstagio();
  }

  @observable
  List<GuiaEstagioModel> listaGuiaEstagio = List.empty();

  @observable
  List<GuiaEstagioPanelModel> listaPanelGuiaEstagio = [];

  @action
  Future<void> getGuiaEstagio() async {
    listaGuiaEstagio = await repository.getGuiaEstagio();
    getListaPanelGuiaEstagio();
  }

  @action
  void getListaPanelGuiaEstagio() {
    var list = <GuiaEstagioPanelModel>[];
    for (var i = 0; i < listaGuiaEstagio.length; i++) {
      list.add(GuiaEstagioPanelModel(guiaEstagio: listaGuiaEstagio[i]));
    }
    listaPanelGuiaEstagio = list;
  }

  @action
  void trocaOpen(int index) {
    var lista = List<GuiaEstagioPanelModel>.from(listaPanelGuiaEstagio);
    lista[index].changeStateIsOpen();
    listaPanelGuiaEstagio = lista;
  }
}
