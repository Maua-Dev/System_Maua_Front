import 'package:system_maua_front/app/modules/materias/models/materias_model.dart';
import '../external/materias_datasource_interface.dart';
import 'materias_repository_interface.dart';

class MateriasRepository implements IMateriasRepository {
  final MateriasDatasourceInterface datasource;

  MateriasRepository({required this.datasource});

  @override
  Future<List<MateriasModel>> getMaterias() {
    return Future.value(datasource.getAllMaterias());
  }
}
