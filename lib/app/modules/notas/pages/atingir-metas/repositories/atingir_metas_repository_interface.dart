import 'package:system_maua_front/app/modules/notas/pages/atingir-metas/models/materia_model.dart';

abstract class IAtingirMetasRepository {
  Future<MateriaModel> getMateria();
  Future<MateriaModel> getNotasCalculadas();
}
