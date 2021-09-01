import 'package:system_maua_front/app/modules/help/pages/help-softwares/models/softwares_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-softwares/repositories/help_softwares_repository_interface.dart';

class HelpSoftwaresRepository extends IHelpSoftwaresRepository {
  List<SoftwaresModel> listSoftwares = [
    SoftwaresModel(
        titulo: 'Microsoft Azure',
        descricao:
            'O programa Microsoft Imagine mudou de nome, agora é conhecido como Azure Dev Tools for Teaching.'
            'O Azure Dev Tolls for Teaching destina-se à Instituições de Ensino Superior nas áreas de Ciências da Computação, Tecnologia, Engenharia e Matemática (STEM - Science, Technology, Engineering and Math). Para outras áreas do conhecimento o conteúdo disponível na plataforma pode ser diferenciado.'
            'No programa da Microsoft, os produtos são oferecidos em sua versão mais recente.'
            'Os professores e alunos dos cursos descrito acima poderão realizar downloads dos softwares para instalarem em seus computadores pessoais, proporcionando assim, a continuidade dos seus estudos e pesquisas fora da Instituição. Estes não poderão ser utilizados para fins comerciais.'
            'Para o acesso a plataforma, copie o endereço abaixo no seu browser ou clique no endereço. Somente o e-mail da Mauá é válido para acesso a plataforma.'),
    SoftwaresModel(
        titulo: 'Office 365',
        descricao:
            'É um software muito doido que faz coisas mais doidas ainda'),
    SoftwaresModel(
        titulo: 'Solid Works', descricao: 'Quer desenhar? desenhe então'),
  ];

  @override
  Future<List<SoftwaresModel>> getInformacaoSoftwares() async {
    return Future.value(listSoftwares);
  }
}