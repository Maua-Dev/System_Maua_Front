import 'package:system_maua_front/app/modules/materias/models/professores_model.dart';
import 'package:system_maua_front/app/modules/materias/pages/materias-aulas/models/materias_aulas_model.dart';
import 'package:system_maua_front/app/modules/materias/pages/materias-introducao/models/materias_introducao_model.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';

class MateriasModel {
  final String codigoMateria;
  final TipoMateriaEnum? nomeMateria;
  final String? foto;
  final List<ProfessoresModel>? professores;
  final List<MateriasAulasModel>? listaAulas;
  final MateriasIntroducaoModel? introducaoModel;

  MateriasModel({
    this.introducaoModel,
    this.listaAulas,
    required this.codigoMateria,
    required this.nomeMateria,
    this.foto,
    this.professores,
  });

  factory MateriasModel.newInstance() {
    return MateriasModel(
      introducaoModel: null,
      codigoMateria: '',
      foto: '',
      nomeMateria: null,
      professores: null,
      listaAulas: null,
    );
  }
}
