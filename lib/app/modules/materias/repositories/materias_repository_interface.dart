import 'package:system_maua_front/app/modules/materias-apresentacao/models/materias_apresentacao_model.dart';
import 'package:system_maua_front/app/modules/materias-aulas/models/materias_aulas_model.dart';
import 'package:system_maua_front/app/modules/materias/models/materias_model.dart';

abstract class IMateriasRepository {
  Future<List<MateriasModel>> getMaterias();
  Future<MateriasApresentacaoModel> getMateriaEspecifica(String codigoMateria);
  Future<String> getUrlPdf(String codigoMateria);
  Future<MateriasAulasModel> getAula(String codigoMateria, int idPagina);
}
