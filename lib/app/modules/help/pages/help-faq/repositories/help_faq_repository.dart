import 'package:system_maua_front/app/modules/help/pages/help-faq/models/faq_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-faq/repositories/help_faq_repository_interface.dart';

class HelpFaqRepository extends IHelpFaqRepository {
  List<FaqModel> listFaq = [
    FaqModel(
        titulo: 'Perguntas frequentes',
        descricao: 'Temos como trocar de grupo?'
            'Uma resposta aqui'
            'Quando começam as PAEs?'
            'Uma resposta aqui'
            'Como reservar a quadra?'
            'Uma resposta aqui e uma ligação para mandar para a parte de reserva.'),
    FaqModel(
        titulo: 'Perguntas sobre eventos',
        descricao: 'Quando é o proximo grande evento?'
            'Sei la'),
    FaqModel(
        titulo: 'Perguntas sobre horários',
        descricao: 'Quando posso matar aula?'
            'Sempre'),
    FaqModel(
        titulo: 'Perguntas sobre locais',
        descricao: 'Onde fica o bloco y?'
            'Sim'),
  ];

  @override
  Future<List<FaqModel>> getInformacaoFaq() async {
    return Future.value(listFaq);
  }
}
