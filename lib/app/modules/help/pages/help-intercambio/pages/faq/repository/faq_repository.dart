import 'package:system_maua_front/app/modules/help/pages/help-faq/models/faq_model.dart';
import 'faq_repository_interface.dart';

class FaqIntercambioRepository implements IFaqIntercambioRepository {
  List<FaqModel> faqList = [
    FaqModel(
        titulo:
            'Quais as iniciativas da Assessoria de Relações Internacionais na Mauá?',
        descricao:
            'A Assessoria de Relações Internacionais\n do IMT trabalha com a intenção de atender\n ao objetivo da instituição em formar um aluno preparado para o mercado global. Para isso mantemos acordos com instituições estrangeiras e brasileiras para viabilizar uma série de atividades, incluindo: colaboração em pesquisas, matérias ministradas em conjunto com instituições internacionais, atividades com professores estrangeiros convidados, matérias do currículo acadêmico em inglês, parcerias com escolas de idiomas e mobilidade acadêmica.'),
    FaqModel(
        titulo: 'Como participar das iniciativas?',
        descricao:
            'A Mauá, cada vez mais, introduz em seu cotidiano questões relativas à internacionalização. Participar em competições, assistir matérias lecionadas em inglês e desenvolver atividades em conjunto com outras instituições é um caminho para estar incluso nessas iniciativas. Durante o ano, vários professores de universidades estrangeiras nos visitam e trazem conteúdo relevante para o curso, atividades geralmente livres e sem custos. Para participar da mobilidade acadêmica, é preciso estar atento à página de relações internacionais da Mauá, na aba "Oportunidades abertas". Essa página é atualizada a cada início de semestre com as possibilidades de mobilidade acadêmica disponíveis para o semestre seguinte; as inscrições são online. Ali o aluno encontrará todas as possibilidades e pré-requisitos, que podem variar de acordo com a oportunidade.'),
    FaqModel(
        titulo: 'Quem pode participar',
        descricao:
            'Várias iniciativas de internacionalização acontecem no Campus e são abertas à participação de todos os alunos. A mobilidade acadêmica, no entanto, possui algumas regras que podem variar de acordo com a oportunidade e com os pré-requisitos da universidade parceira. Em linhas gerais, é preciso ter bom desempenho acadêmico e proficiência no idioma em que a universidade ministra os cursos. Uma boa parte das oportunidades de mobilidade acadêmica possui limitação de vagas, sendo necessária uma seleção prévia da Mauá. São levados em conta o Coeficiente de Rendimento, a proficiência do aluno no idioma e a participação em atividades no IMT como Monitoria e Iniciação Científica.'),
    FaqModel(
        titulo: 'Como me preparar?',
        descricao:
            'Adquirir conhecimento em outros idiomas é um item fundamental para participar de todas as atividades de internacionalização do IMT. Em muitos casos, certificações como DELF, TOEFL e IELTS são requeridas e, portanto, são sempre bem-vindas. Outras iniciativas, como manter boas notas e engajar-se em atividades da Mauá, como Iniciação Científica e Monitoria, sem dúvida vão cooperar ainda mais nesse sentido, sobretudo àqueles interessados na mobilidade acadêmica. O passaporte atualmente tem 10 anos de validade, portanto é também uma boa sugestão; para quem ainda não tem, solicitar a emissão e tê-lo em mãos para eventuais oportunidades durante o curso.'),
    FaqModel(
        titulo: 'Tenho de pagar para participar da mobilidade acadêmica?',
        descricao:
            'Alunos que participam de mobilidade acadêmica podem, eventualmente, estar sujeitos a taxas na universidade de destino. Isso se aplica, geralmente, às universidades de países de língua inglesa. Para praticamente todos os demais, não há custos com a universidade. As despesas referentes à viagem e manutenção do custo de vida como: acomodação, alimentação, seguro, bilhete aéreo e visto, entre outros, são sempre de responsabilidade do aluno.'),
    FaqModel(
        titulo:
            'Quais os benefícios da Mauá para os alunos participarem de mobilidade acadêmica?',
        descricao:
            'Todo aluno da Mauá em mobilidade acadêmica tem o benefício da interrupção do curso, que o mantém vinculado à Mauá, no entanto isento do pagamento de mensalidades pelo período da mobilidade. Esse é um benefício da instituição que permite ao aluno concentrar-se nas despesas logísticas da mobilidade. Além disso, a Mauá possuí itinerários de formação com a mobilidade acadêmica já mapeada para a maior parte dos cursos; são os programas de graduação-sanduíche e dupla diplomação. Nesses casos, basta o aluno seguir as rotas indicadas para obter a validação de todo o conteúdo estudado no exterior. Esse procedimento é um facilitador da validação, mas o aproveitamento não é exclusivo dos programas mencionados. Há, por parte da Instituição, o esforço para aproveitar conteúdo de todo programa de mobilidade em que alunos tenham sido aprovados.'),
    FaqModel(
        titulo: 'Como validar o conteúdo estudado no exterior?',
        descricao:
            'O primeiro passo é realizado antes da viagem. Recomendamos a cada aluno, com a possibilidade de participar de algum programa de mobilidade. consultar seu coordenador de curso sobre as matérias disponíveis na universidade parceira que poderiam ser aproveitadas no Brasil. Dessa forma, a escolha do conteúdo é otimizada e o aluno terá uma clara ideia do que pode ser aproveitado. Ao retornarem, as matérias em que os alunos foram aprovados podem ser aproveitadas mediante análise da coordenação. O pedido é feito pela secretaria com o histórico acadêmico do período de mobilidade anexo.'),
    FaqModel(
        titulo: 'O que são os programas de Dupla Diplomação e Sanduíche?',
        descricao:
            'São rotas que a Mauá já desenvolveu com universidades parceiras para total aproveitamento do conteúdo estudado no exterior e, no caso do Duplo Diploma, para a obtenção de um segundo Certificado, emitido pela universidade do outro país. Cabe ressaltar que a mobilidade acadêmica não está limitada a esses dois programas e que as mais de 30 universidades parceiras da Mauá podem receber alunos em mobilidade acadêmica.'),
    FaqModel(
        titulo: 'Como funciona a interrupção do curso?',
        descricao:
            'A interrupção do curso "congela" as situações acadêmica e financeira do aluno. Por exemplo, um aluno de engenharia que participar de mobilidade acadêmica por um ano e sair em setembro, terá seu progresso acadêmico e sua situação de matrícula mantida pelo período e, ao retomar no ano seguinte, continuará com os pagamentos a partir da última mensalidade paga e seu curso a partir do último conteúdo visto, mantendo as notas que já obteve. Evidentemente, o aluno terá também a possibilidade de solicitar aproveitamento de matérias cursadas na universidade parceira. A interrupção de curso é solicitada diretamente na Secretaria, com uma carta de aceite da universidade estrangeira em mãos. É mandatório não possuir débitos com a Mauá para receber o benefício.'),
  ];

  @override
  Future<List<FaqModel>> getFaq() async {
    return Future.value(faqList);
  }
}
