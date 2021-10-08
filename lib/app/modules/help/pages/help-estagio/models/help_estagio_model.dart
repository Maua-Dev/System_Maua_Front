import 'package:system_maua_front/app/shared/models/arquivos_model.dart';

class HelpEstagioModel {
  final String tituloPanel;
  final ArquivosModel? nomearquivo;

  HelpEstagioModel({required this.tituloPanel, this.nomearquivo});

  factory HelpEstagioModel.newInstance() {
    return HelpEstagioModel(tituloPanel: '', nomearquivo: null);
  }
}
