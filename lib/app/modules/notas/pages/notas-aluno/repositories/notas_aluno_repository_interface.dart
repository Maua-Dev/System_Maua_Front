import 'package:system_maua_front/app/modules/notas/pages/notas-aluno/models/materia_model.dart';

abstract class INotasAlunoRepository {
  Future<MateriaModel> getMateria();
}
