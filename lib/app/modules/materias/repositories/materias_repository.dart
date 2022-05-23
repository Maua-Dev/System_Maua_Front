import 'package:system_maua_front/app/modules/materias/models/materias_model.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';

import 'materias_repository_interface.dart';

class MateriasRepository implements IMateriasRepository {
  var listaMaterias = [
    MateriasModel(
      nome: TipoMateriaEnum.ACADEMIATALENTOS,
      progresso: 0.9,
    ),
    MateriasModel(nome: TipoMateriaEnum.CALC1, progresso: 0.4),
    MateriasModel(nome: TipoMateriaEnum.RESMAT, progresso: 0.0),
    MateriasModel(
      nome: TipoMateriaEnum.ACADEMIATALENTOS,
      progresso: 0.9,
    ),
    MateriasModel(nome: TipoMateriaEnum.CALC1, progresso: 0.4),
    MateriasModel(nome: TipoMateriaEnum.RESMAT, progresso: 0.0),
    MateriasModel(
      nome: TipoMateriaEnum.ACADEMIATALENTOS,
      progresso: 0.9,
    ),
    MateriasModel(nome: TipoMateriaEnum.CALC1, progresso: 0.4),
    MateriasModel(nome: TipoMateriaEnum.RESMAT, progresso: 0.0),
    MateriasModel(
      nome: TipoMateriaEnum.ACADEMIATALENTOS,
      progresso: 0.9,
    ),
    MateriasModel(nome: TipoMateriaEnum.CALC1, progresso: 0.4),
    MateriasModel(nome: TipoMateriaEnum.RESMAT, progresso: 1),
  ];

  @override
  Future<List<MateriasModel>> getMaterias() {
    return Future.value(listaMaterias);
  }
}
