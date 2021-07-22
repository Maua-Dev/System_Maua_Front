import 'package:system_maua_front/app/modules/notas-aluno/enumerates/avaliacao_enum.dart';
import 'package:system_maua_front/app/modules/notas-aluno/models/materia_model.dart';
import 'package:system_maua_front/app/modules/notas-aluno/models/notas_model.dart';
import 'package:system_maua_front/app/modules/notas-aluno/repositories/notas_aluno_repository_interface.dart';

class NotasAlunoRepository implements INotasAlunosRepository {
  var materia = MateriaModel(
      materia: 'Resistência dos Materiais',
      notaParcial: 9.0,
      provas: [
        NotasModel(avaliacao: AvaliacaoEnum.P1, value: 9.0),
        NotasModel(avaliacao: AvaliacaoEnum.P2, value: 9.0),
        NotasModel(avaliacao: AvaliacaoEnum.P3, value: 9.0),
        NotasModel(avaliacao: AvaliacaoEnum.P4, value: 9.0),
      ],
      trabalhos: [
        NotasModel(avaliacao: AvaliacaoEnum.T1, value: 9.0),
        NotasModel(avaliacao: AvaliacaoEnum.T2, value: 9.0),
        NotasModel(avaliacao: AvaliacaoEnum.T3, value: 9.0),
        NotasModel(avaliacao: AvaliacaoEnum.T4, value: 9.0),
      ]);

  @override
  Future<MateriaModel> getMateria() {
    return Future.value(materia);
  }
}
