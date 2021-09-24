import 'package:system_maua_front/app/shared/models/arquivos_model.dart';

class HelpEstagioModel {
  final String tituloPanel;
  final ArquivoModel? arquivo;

  HelpEstagioModel({required this.tituloPanel, this.arquivo});

  factory HelpEstagioModel.newInstance() {
    return HelpEstagioModel(tituloPanel: '', arquivo: null);
  }
}