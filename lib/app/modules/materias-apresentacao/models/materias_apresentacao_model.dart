import 'package:system_maua_front/app/modules/materias/models/materias_model.dart';
import 'package:system_maua_front/app/modules/materias/models/professores_model.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';
import 'package:system_maua_front/app/shared/models/pdf_model.dart';

class MateriasApresentacaoModel extends MateriasModel {
  final String introducao;
  final ArquivosModel? pdf;

  MateriasApresentacaoModel(
      {required String codigoMateria,
      TipoMateriaEnum? nome,
      required String foto,
      List<ProfessoresModel>? professores,
      required this.introducao,
      this.pdf})
      : super(
            nome: nome,
            codigoMateria: codigoMateria,
            foto: foto,
            professores: professores);

  factory MateriasApresentacaoModel.newInstance() {
    return MateriasApresentacaoModel(
        codigoMateria: '',
        foto: '',
        nome: null,
        professores: null,
        introducao: '',
        pdf: null);
  }
}
