import 'package:system_maua_front/app/shared/models/arquivos_model.dart';

class MateriasApresentacaoModel {
  final String introducao;
  final ArquivosModel? pdf;

  MateriasApresentacaoModel({required this.introducao, this.pdf});

  factory MateriasApresentacaoModel.newInstance() {
    return MateriasApresentacaoModel(introducao: '', pdf: null);
  }
}
