import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/pages/oportunidades_abertas/models/universidade_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/pages/oportunidades_abertas/models/universidade_panel_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/pages/oportunidades_abertas/repository/oportunidade_repository_interface.dart';
part 'oportunidade_controller.g.dart';

class OportunidadeController = _OportunidadeControllerBase
    with _$OportunidadeController;

abstract class _OportunidadeControllerBase with Store {
  final IOportunidadeRepository repository;

  _OportunidadeControllerBase(this.repository) {
    getListRepository();
  }

  @observable
  List<UniversidadeModel> listaUniversidade = [];

  @observable
  List<UniversidadePanelModel> universidadeAction = [];

  @action
  void setUniversidadeAction() {
    var list = <UniversidadePanelModel>[];
    for (var i = 0; i < listaUniversidade.length; i++) {
      list.add(UniversidadePanelModel(universidade: listaUniversidade[i]));
    }
    universidadeAction = list;
  }

  @action
  void trocaOpen(int index) {
    var lista = List<UniversidadePanelModel>.from(universidadeAction);
    lista[index].changeStateIsOpen();
    universidadeAction = lista;
  }

  @action
  Future<void> getListRepository() async {
    listaUniversidade = await repository.getUniversidade();
    setUniversidadeAction();
  }
}
