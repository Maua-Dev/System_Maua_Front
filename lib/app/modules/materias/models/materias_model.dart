import 'package:system_maua_front/app/modules/materias/models/professores_model.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';

class MateriasModel {
  final TipoMateriaEnum nome;
  final String foto;
  final List<ProfessoresModel>? professores;

  MateriasModel({required this.nome, required this.foto, this.professores});
}
