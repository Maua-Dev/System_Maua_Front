import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/help/pages/help-avisos/repositories/help_avisos_repository_interface.dart';

import 'models/avisos_model.dart';
import 'models/avisos_panel_model.dart';

part 'help_avisos_controller.g.dart';

class HelpAvisosController = _HelpAvisosControllerBase
    with _$HelpAvisosController;

abstract class _HelpAvisosControllerBase with Store {
  final IHelpAvisosRepository repository;

  _HelpAvisosControllerBase(this.repository) {
    getInformacaoAvisos();
  }

  @observable
  List<AvisosModel> avisos = [];

  @observable
  List<AvisosPanelModel> avisosAction = [];

  @action
  void setAvisosAction() {
    var list = <AvisosPanelModel>[];
    for (var i = 0; i < avisos.length; i++) {
      list.add(AvisosPanelModel(avisos: avisos[i]));
    }
    avisosAction = list;
  }

  @action
  void trocaOpen(int index) {
    var lista = List<AvisosPanelModel>.from(avisosAction);
    lista[index].changeStateIsOpen();
    avisosAction = lista;
  }

  @action
  Future<void> getInformacaoAvisos() async {
    avisos = await repository.getInformacaoAvisos();
    setAvisosAction();
  }
}
