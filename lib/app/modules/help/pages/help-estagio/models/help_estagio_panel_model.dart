import 'package:system_maua_front/app/modules/help/pages/help-estagio/models/help_estagio_model.dart';

class HelpEstagioPanelModel {
  final HelpEstagioModel estagio;
  bool _isOpen = false;

  HelpEstagioPanelModel({required this.estagio});

  void changeStateIsOpen() {
    _isOpen = !_isOpen;
  }

  bool get isOpen => _isOpen;
}
