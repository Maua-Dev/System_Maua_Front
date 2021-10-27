import 'package:system_maua_front/app/shared/models/arquivos_model.dart';
import 'package:system_maua_front/app/shared/models/professores_model.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';

class MateriasModel {
  final TipoMateriaEnum nome;
  final String foto;
  final List<ProfessoresModel>? professores;
  final ArquivosModel? planoDeEnsino;

  MateriasModel({required this.nome, required this.foto, this.professores, this.planoDeEnsino});
}
