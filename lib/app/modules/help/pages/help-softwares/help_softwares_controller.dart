import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/help/pages/help-softwares/models/softwares_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-softwares/models/softwares_panel_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-softwares/repositories/help_softwares_repository_interface.dart';

part 'help_softwares_controller.g.dart';

class HelpSoftwaresController = _HelpSoftwaresControllerBase
    with _$HelpSoftwaresController;

abstract class _HelpSoftwaresControllerBase with Store {
  final IHelpSoftwaresRepository repository;

  _HelpSoftwaresControllerBase(this.repository) {
    getInformacaoSoftwares();
  }

  @observable
  List<SoftwaresModel> softwares = [];

  @observable
  List<SoftwaresPanelModel> softwaresAction = [];

  @action
  void setSoftwaresAction() {
    var list = <SoftwaresPanelModel>[];
    for (var i = 0; i < softwares.length; i++) {
      list.add(SoftwaresPanelModel(softwares: softwares[i]));
    }
    softwaresAction = list;
  }

  @action
  void trocaOpen(int index) {
    var lista = List<SoftwaresPanelModel>.from(softwaresAction);
    lista[index].changeStateIsOpen();
    softwaresAction = lista;
  }

  @action
  Future<void> getInformacaoSoftwares() async {
    softwares = await repository.getInformacaoSoftwares();
    setSoftwaresAction();
  }
}
