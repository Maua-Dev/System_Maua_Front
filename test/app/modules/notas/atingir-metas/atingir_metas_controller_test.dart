import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/notas/pages/atingir-metas/atingir_metas_controller.dart';
import 'package:system_maua_front/app/modules/notas/pages/atingir-metas/enumerates/avaliacao_a_enum.dart';
import 'package:system_maua_front/app/modules/notas/pages/atingir-metas/repositories/atingir_metas_repository_interface.dart';

import 'package:system_maua_front/app/modules/notas/pages/atingir-metas/models/materia_model.dart';
import 'package:system_maua_front/app/modules/notas/pages/atingir-metas/models/notas_model.dart';

import 'atingir_metas_controller_test.mocks.dart';

@GenerateMocks([IAtingirMetasRepository])
void main() {
  IAtingirMetasRepository repository = MockIAtingirMetasRepository();
  late AtingirMetasController atingirMetasController;

  var materiaTeste = MateriaModel(nome: 'Resmat', notaParcial: 9.0, provas: [
    NotasModel(avaliacao: AvaliacaoEnum.P1, value: 9.0),
    NotasModel(avaliacao: AvaliacaoEnum.P2, value: 9.0),
    NotasModel(avaliacao: AvaliacaoEnum.P3, value: 9.0),
    NotasModel(avaliacao: AvaliacaoEnum.P4, value: 9.0),
  ], trabalhos: [
    NotasModel(avaliacao: AvaliacaoEnum.T1, value: 9.0),
    NotasModel(avaliacao: AvaliacaoEnum.T2, value: 9.0),
    NotasModel(avaliacao: AvaliacaoEnum.T3, value: 9.0),
    NotasModel(avaliacao: AvaliacaoEnum.T4, value: 9.0),
  ]);

  var metasParaCalculoTeste = <String, String>{'P1': '8'};

  var notasCalculadas = MateriaModel(
      nome: 'Resistência dos Materiais',
      notaParcial: 9.0,
      provas: [
        NotasModel(avaliacao: AvaliacaoEnum.P1, value: 9.0),
        NotasModel(avaliacao: AvaliacaoEnum.P2, value: 9.0),
        NotasModel(avaliacao: AvaliacaoEnum.P3, value: 5.0),
        NotasModel(avaliacao: AvaliacaoEnum.P4, value: 1.0),
        NotasModel(avaliacao: AvaliacaoEnum.PS1, value: 6.0),
        NotasModel(avaliacao: AvaliacaoEnum.PS2, value: 9.0),
      ],
      trabalhos: [
        NotasModel(avaliacao: AvaliacaoEnum.T1, value: 5.0),
        NotasModel(avaliacao: AvaliacaoEnum.T2, value: 9.0),
        NotasModel(avaliacao: AvaliacaoEnum.T3, value: 9.0),
        NotasModel(avaliacao: AvaliacaoEnum.T4, value: 9.0),
        NotasModel(avaliacao: AvaliacaoEnum.T5, value: 6),
        NotasModel(avaliacao: AvaliacaoEnum.T6, value: 6),
        NotasModel(avaliacao: AvaliacaoEnum.T7, value: 6),
        NotasModel(avaliacao: AvaliacaoEnum.T8, value: 6),
        NotasModel(avaliacao: AvaliacaoEnum.T9, value: 6),
        NotasModel(avaliacao: AvaliacaoEnum.T10, value: 6),
        NotasModel(avaliacao: AvaliacaoEnum.T11, value: 6),
        NotasModel(avaliacao: AvaliacaoEnum.T12, value: 6),
      ]);

  setUpAll(() {
    when(repository.getMateria()).thenAnswer((_) async => materiaTeste);
    when(repository.getNotasCalculadas())
        .thenAnswer((_) async => notasCalculadas);
    atingirMetasController = AtingirMetasController(repository);
  });

  test('[TEST] - getMateria', () async {
    await atingirMetasController.getMateria();
    expect(atingirMetasController.materia, materiaTeste);
  });

  test('[TEST] - seNotas', () async {
    await atingirMetasController.setNota('8', AvaliacaoEnum.P1);
    expect(atingirMetasController.metasParaCalculo, metasParaCalculoTeste);
  });

  test('[TEST] - getNotasCalculadas', () async {
    await atingirMetasController.getNotasCalculadas();
    expect(atingirMetasController.materia, notasCalculadas);
  });
}
