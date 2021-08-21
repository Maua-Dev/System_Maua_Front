import 'package:system_maua_front/app/shared/models/arquivos_model.dart';

class MateriasIntroducaoModel {
  final String introducao;
  final ArquivosModel? pdf;

  MateriasIntroducaoModel({required this.introducao, this.pdf});

  factory MateriasIntroducaoModel.newInstance() {
    return MateriasIntroducaoModel(introducao: '', pdf: null);
  }
}
