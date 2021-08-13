import 'package:system_maua_front/app/modules/materias/models/materias_model.dart';

abstract class IMateriasRepository {
  Future<List<MateriasModel>> getMaterias();
  Future<MateriasModel> getMateriaEspecifica(String codigoMateria);
}
