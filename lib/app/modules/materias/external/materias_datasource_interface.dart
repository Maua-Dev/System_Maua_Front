import '../models/materias_model.dart';

abstract class MateriasDatasourceInterface {
  Future<List<MateriasModel>> getAllMaterias();
}
