import 'package:system_maua_front/app/shared/models/professores_model.dart';

class MateriasModel {
  final String nome;
  final String codeSubject;
  final String? foto;
  final List<ProfessoresModel>? professores;

  MateriasModel(
      {required this.codeSubject,
      required this.nome,
      this.foto,
      this.professores});

  factory MateriasModel.fromMap(Map<String, dynamic> map) {
    return MateriasModel(
      nome: map['name'] as String,
      codeSubject: map['codeSubject'] as String,
    );
  }

  static List<MateriasModel> fromMaps(List array) {
    return array
        .map((e) => MateriasModel.fromMap(e as Map<String, dynamic>))
        .toList();
  }
}
