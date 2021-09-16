import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_estagio/models/estagios_model.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_estagio/mural_estagios_controller.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_estagio/repositories/mural_estagios_repository_interface.dart';

import 'mural_estagios_controller_test.mocks.dart';

@GenerateMocks([IMuralEstagiosRepository])
void main() {
  IMuralEstagiosRepository repository = MockIMuralEstagiosRepository();
  late MuralEstagiosController controller;

  var estagios = [
    EstagiosModel(
        dataEstagio: '19/06',
        nomeEstagio: 'Estágio Bayer',
        descricaoEstagio:
            'Ser Bayer é desenvolver ciência para uma vida melhor, em busca de saúde para todos e fome para ninguém. Dentro do nosso programa de estágio você terá a chance de se desenvolver em oportunidades distribuídas pelo Brasil para as três divisões de negócio: Crop Science, Farmacêutica e Consumer Health, além das vagas em nossas funções corporativas. ÁREAS: Conheça alguns cursos aceitos no programa: Administração (todas), Agronomia, Ciências Biológicas, Ciências Contábeis, Ciência de Dados, Ciências Econômicas, Comunicação Social (todas), Cursos de Tecnologia, Design, Direito, Engenharias (todas), Estatística, Farmácia, Física, Marketing, Matemática, Tecnólogo, Psicologia, Química entre outros. QUESITOS: Para o desenvolvimento no programa de estágio superior buscamos estudantes cursando a partir do 2º ano da graduação.'),
    EstagiosModel(
        dataEstagio: '22/12',
        nomeEstagio: 'Estágio Itaú',
        descricaoEstagio:
            'Ser Bayer é desenvolver ciência para uma vida melhor, em busca de saúde para todos e fome para ninguém. Dentro do nosso programa de estágio você terá a chance de se desenvolver em oportunidades distribuídas pelo Brasil para as três divisões de negócio: Crop Science, Farmacêutica e Consumer Health, além das vagas em nossas funções corporativas. ÁREAS: Conheça alguns cursos aceitos no programa: Administração (todas), Agronomia, Ciências Biológicas, Ciências Contábeis, Ciência de Dados, Ciências Econômicas, Comunicação Social (todas), Cursos de Tecnologia, Design, Direito, Engenharias (todas), Estatística, Farmácia, Física, Marketing, Matemática, Tecnólogo, Psicologia, Química entre outros. QUESITOS: Para o desenvolvimento no programa de estágio superior buscamos estudantes cursando a partir do 2º ano da graduação.'),
    EstagiosModel(
        dataEstagio: '19/05',
        nomeEstagio: 'Estágio Ronaldola',
        descricaoEstagio:
            'Ser Bayer é desenvolver ciência para uma vida melhor, em busca de saúde para todos e fome para ninguém. Dentro do nosso programa de estágio você terá a chance de se desenvolver em oportunidades distribuídas pelo Brasil para as três divisões de negócio: Crop Science, Farmacêutica e Consumer Health, além das vagas em nossas funções corporativas. ÁREAS: Conheça alguns cursos aceitos no programa: Administração (todas), Agronomia, Ciências Biológicas, Ciências Contábeis, Ciência de Dados, Ciências Econômicas, Comunicação Social (todas), Cursos de Tecnologia, Design, Direito, Engenharias (todas), Estatística, Farmácia, Física, Marketing, Matemática, Tecnólogo, Psicologia, Química entre outros. QUESITOS: Para o desenvolvimento no programa de estágio superior buscamos estudantes cursando a partir do 2º ano da graduação.'),
  ];

  setUpAll(() {
    when(repository.getEstagios()).thenAnswer((_) async => estagios);
    controller = MuralEstagiosController(repository);
  });

  test('[TEST] - getEstagios', () async {
    await controller.getEstagios();
    expect(controller.listaEstagios, estagios);
  });

  test('[TEST] - setListaPanelEstagios', () async {
    controller.setListaPanelEstagios();
    expect(controller.listaPanelEstagios.isNotEmpty, true);
  });

  test('[TEST] - trocaOpen', () {
    controller.trocaOpen(0);
    expect(controller.listaPanelEstagios[0].isOpen, true);
  });
}
