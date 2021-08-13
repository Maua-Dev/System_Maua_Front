import 'package:system_maua_front/app/modules/materias/models/professores_model.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';

class MateriasModel {
  final String codigoMateria;
  final TipoMateriaEnum? nome;
  final String foto;
  final List<ProfessoresModel>? professores;
  final String introducao;
  final String? pdf;

  MateriasModel(
      {required this.codigoMateria,
      required this.nome,
      required this.foto,
      this.professores,
      required this.introducao,
      this.pdf});

  factory MateriasModel.newInstance() {
    return MateriasModel(
        codigoMateria: '',
        foto: '',
        introducao: '',
        nome: null,
        pdf: null,
        professores: null);
  }
}
