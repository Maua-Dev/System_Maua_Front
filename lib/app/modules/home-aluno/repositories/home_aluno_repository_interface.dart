import 'package:system_maua_front/app/shared/models/aluno_model.dart';
import 'package:system_maua_front/app/shared/models/aula_model.dart';

abstract class IHomeAlunoRepository {
  Future<AlunoModel> getAluno();
  Future<AulaModel> getAula();
}
