import 'package:system_maua_front/app/modules/help/pages/help-faq/models/faq_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-faq/repositories/help_faq_repository_interface.dart';

class HelpFaqRepository extends IHelpFaqRepository {
  List<FaqModel> listFaq = [
    FaqModel(
        titulo: 'Perguntas frequentes',
        descricao: 'Temos como trocar de grupo?\n'
            'Uma resposta aqui\n\n'
            'Quando começam as PAEs?\n'
            'Uma resposta aqui\n\n'
            'Como reservar a quadra?\n'
            'Uma resposta aqui'),
    FaqModel(
        titulo: 'Perguntas sobre eventos',
        descricao: 'Quando é o proximo grande evento?\n'
            'Sei la'),
    FaqModel(
        titulo: 'Perguntas sobre horários',
        descricao: 'Quando posso matar aula?\n'
            'Sempre'),
    FaqModel(
        titulo: 'Perguntas sobre locais',
        descricao: 'Onde fica o bloco y?\n'
            'Sim'),
  ];

  @override
  Future<List<FaqModel>> getInformacaoFaq() async {
    return Future.value(listFaq);
  }
}
