import 'package:system_maua_front/app/modules/help/pages/help-estagio/page/guia-de-estagio/models/guia_de_estagio_model.dart';

class GuiaEstagioPanelModel {
  final GuiaEstagioModel guiaEstagio;
  bool _isOpen = false;

  GuiaEstagioPanelModel({required this.guiaEstagio});

  void changeStateIsOpen() {
    _isOpen = !_isOpen;
  }

  bool get isOpen => _isOpen;
}
