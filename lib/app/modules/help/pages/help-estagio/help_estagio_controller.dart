import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/models/help_estagio_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/models/help_estagio_panel_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/repositories/help_estagio_repository_interface.dart';

part 'help_estagio_controller.g.dart';

class HelpEstagioController = _HelpEstagioControllerBase
    with _$HelpEstagioController;

abstract class _HelpEstagioControllerBase with Store {
  IHelpEstagioRepository repository;

  _HelpEstagioControllerBase(
    this.repository,
  ) {
    getEstagio();
  }

  @observable
  List<HelpEstagioModel> listaEstagio = List.empty();

  @observable
  List<HelpEstagioPanelModel> listaPanelEstagio = [];

  @action
  Future<void> getEstagio() async {
    listaEstagio = await repository.getEstagio();
    getListaPanelEstagio();
  }

  @action 
  void getListaPanelEstagio() {
    var list = <HelpEstagioPanelModel>[];
    for (var i = 0; i < listaEstagio.length; i++) {
      list.add(HelpEstagioPanelModel(estagio: listaEstagio[i]));
    }
    listaPanelEstagio = list;
  }

  @action
  void trocaOpen(int index) {
    var lista = List<HelpEstagioPanelModel>.from(listaPanelEstagio);
    lista[index].changeStateIsOpen();
    listaPanelEstagio = lista;
  }
}