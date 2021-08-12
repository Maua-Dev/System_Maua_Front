import 'package:system_maua_front/app/modules/materias/models/professores_model.dart';

class MateriasModel {
  final String nome;
  final List<ProfessoresModel>? professores;

  MateriasModel({required this.nome, this.professores});
}
