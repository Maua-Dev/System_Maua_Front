import 'package:system_maua_front/app/modules/materias/models/materias_model.dart';
import 'package:system_maua_front/app/modules/materias/models/professores_model.dart';
import 'package:system_maua_front/app/modules/materias/pages/materias-aulas/models/materias_aulas_model.dart';
import 'package:system_maua_front/app/modules/materias/pages/materias-introducao/models/materias_introducao_model.dart';

abstract class IMateriasRepository {
  Future<List<MateriasModel>> getMaterias();
  Future<MateriasIntroducaoModel> getApresentacao(String codigoMateria);
  Future<List<ProfessoresModel>> getProfessores(String codigoMateria);
  Future<String> getUrlPdf(String codigoMateria);
  Future<MateriasAulasModel> getAula(String codigoMateria, int idPagina);
  Future<MateriasModel> getMateriaEspecifica(String codigoMateria);
}
