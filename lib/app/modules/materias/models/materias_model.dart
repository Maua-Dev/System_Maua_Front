import 'package:system_maua_front/app/modules/materias/models/professores_model.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';

class MateriasModel {
  final String codigoMateria;
  final TipoMateriaEnum? nome;
  final String foto;
  final List<ProfessoresModel>? professores;

  MateriasModel({
    required this.codigoMateria,
    required this.nome,
    required this.foto,
    this.professores,
  });

  factory MateriasModel.newInstance() {
    return MateriasModel(
        codigoMateria: '', foto: '', nome: null, professores: null);
  }
}
