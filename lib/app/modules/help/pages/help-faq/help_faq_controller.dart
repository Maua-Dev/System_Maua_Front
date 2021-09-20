import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/help/pages/help-faq/models/faq_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-faq/models/faq_panel_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-faq/repositories/help_faq_repository_interface.dart';

part 'help_faq_controller.g.dart';

class HelpFaqController = _HelpFaqControllerBase with _$HelpFaqController;

abstract class _HelpFaqControllerBase with Store {
  final IHelpFaqRepository repository;

  _HelpFaqControllerBase(this.repository) {
    getInformacaoFaq();
  }

  @observable
  List<FaqModel> faq = [];

  @observable
  List<FaqPanelModel> faqAction = [];

  @action
  void setFaqAction() {
    var list = <FaqPanelModel>[];
    for (var i = 0; i < faq.length; i++) {
      list.add(FaqPanelModel(faq: faq[i]));
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
  Future<void> getInformacaoFaq() async {
    faq = await repository.getInformacaoFaq();
    setFaqAction();
  }
}
