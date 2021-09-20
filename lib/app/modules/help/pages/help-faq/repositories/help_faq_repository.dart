import 'package:system_maua_front/app/modules/help/pages/help-faq/models/faq_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-faq/repositories/help_faq_repository_interface.dart';

class HelpFaqRepository extends IHelpFaqRepository {
  List<FaqModel> listFaq = [
    FaqModel(
        titulo: 'Perguntas frequentes',
        descricao: 'Temos como trocar de grupo apoós começar?\n'
            'Uma resposta aqui\n\n'
            'Quando começam as PAEs?\n'
            'Uma resposta aqui\n\n'
            'Como reservar a quadra?\n'
            'Uma resposta aqui'),
    FaqModel(
        titulo: 'Perguntas sobre eventos',
        descricao: 'Quando é o proximo grande evento?\n'
            'Uma resposta aqui\n\n'
            'Quando começam eles?\n'
            'Uma resposta aqui\n\n'
            'Como reservar um evento?\n'
            'Uma resposta aqui'),
    FaqModel(
        titulo: 'Perguntas sobre horários',
        descricao: 'Quando posso matar aula?\n'
            'Uma resposta aqui\n\n'
            'Quando começam as PAEs de horario?\n'
            'Uma resposta aqui\n\n'
            'Como reservar um horario na sala?\n'
            'Uma resposta aqui'),
    FaqModel(
        titulo: 'Perguntas sobre locais',
        descricao: 'Onde fica o bloco y?\n'
            'Uma resposta aqui\n\n'
            'Onde alugar quadra pela mauá?\n'
            'Uma resposta aqui\n\n'
            'Onde fica o melhor lugar pra comer?\n'
            'Uma resposta aqui'),
  ];

  @override
  Future<List<FaqModel>> getInformacaoFaq() async {
    return Future.value(listFaq);
  }
}
