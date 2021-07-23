import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/notas-aluno/enumerates/avaliacao_enum.dart';
import 'package:system_maua_front/app/modules/notas-aluno/models/materia_model.dart';
import 'package:system_maua_front/app/modules/notas-aluno/models/notas_model.dart';
import 'package:system_maua_front/app/modules/notas-aluno/notas_aluno_controller.dart';
import 'package:system_maua_front/app/modules/notas-aluno/repositories/notas_aluno_repository_interface.dart';

import 'notas_aluno_controller_test.mocks.dart';

@GenerateMocks([INotasAlunosRepository])
void main() {
  INotasAlunosRepository repository = MockINotasAlunosRepository();
  late NotasAlunoController notasAlunoController;
  var materiaTeste = MateriaModel(materia: 'Resmat', notaParcial: 9.0, provas: [
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

  setUpAll(() {
    when(repository.getMateria()).thenAnswer((_) async => materiaTeste);
    notasAlunoController = NotasAlunoController(repository);
  });

  test('[TEST] - getAluno', () async {
    await notasAlunoController.getMateria();
    expect(notasAlunoController.materia, materiaTeste);
  });
}
