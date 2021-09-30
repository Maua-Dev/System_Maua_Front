import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/help/pages/help-faq/models/faq_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-faq/models/faq_panel_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/pages/faq/repository/faq_repository.dart';
part 'faq_intercambio_controller.g.dart';

class FaqIntercambioController = _FaqIntercambioControllerBase
    with _$FaqIntercambioController;

abstract class _FaqIntercambioControllerBase with Store {
  final FaqIntercambioRepository repository;

  _FaqIntercambioControllerBase(this.repository) {
    getListRepository();
  }

  @observable
  List<FaqModel> listaFaq = [];

  @observable
  List<FaqPanelModel> faqAction = [];

  @action
  void setFaqAction() {
    var list = <FaqPanelModel>[];
    for (var i = 0; i < listaFaq.length; i++) {
      list.add(FaqPanelModel(faq: listaFaq[i]));
    }
    faqAction = list;
  }

  @action
  void trocaOpen(int index) {
    var lista = List<FaqPanelModel>.from(faqAction);
    lista[index].changeStateIsOpen();
    faqAction = lista;
  }

  @action
  Future<void> getListRepository() async {
    listaFaq = await repository.getFaq();
    setFaqAction();
  }
}
