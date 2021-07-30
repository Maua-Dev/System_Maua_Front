import 'package:system_maua_front/app/modules/notas-aluno/models/materia_model.dart';

abstract class INotasAlunoRepository {
  Future<MateriaModel> getMateria();
}
