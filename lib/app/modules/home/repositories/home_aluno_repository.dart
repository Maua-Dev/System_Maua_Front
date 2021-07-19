import 'package:system_maua_front/app/modules/home/repositories/home_aluno_repository_interface.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';
import 'package:system_maua_front/app/shared/models/aluno_model.dart';
import 'package:system_maua_front/app/shared/models/aula_model.dart';

class HomeAlunoRepository implements IHomeAlunoRepository {
  var aluno = AlunoModel(nome: 'Ronaldinho', ra: '17.00163-3');

  var materia = AulaModel(
      local: 'H102',
      tipoMateriaEnum: TipoMateriaEnum.RESMAT,
      horario: '14:00h',
      duracao: '14:00 - 15:40');

  @override
  Future<AlunoModel> getAluno() {
    return Future.value(aluno);
  }

  @override
  Future<AulaModel> getAula() {
    return Future.value(materia);
  }
}
