import 'package:system_maua_front/app/shared/models/aluno_model.dart';
import 'package:system_maua_front/app/shared/models/aula_model.dart';

import 'home_aluno_repository_interface.dart';

class HomeAlunoRepository implements IHomeAlunoRepository {
  var aluno = AlunoModel(
    nome: 'Ronaldinho',
    ra: '15.01310-3',
  );

  var aula = AulaModel(
      local: 'H101',
      nomeAula: 'Resmat',
      horario: '14:00h',
      duracao: '14:00 - 15:40');

  @override
  Future<AlunoModel> getAluno() {
    return Future.value(aluno);
  }

  @override
  Future<AulaModel> getAula() async {
    await Future.delayed(Duration(seconds: 1));
    return Future.value(aula);
  }
}
