import 'avisos_model.dart';

class AvisosPanelModel {
  bool _isOpen = false;
  final AvisosModel avisos;

  AvisosPanelModel({required this.avisos});

  void changeStateIsOpen() {
    _isOpen = !_isOpen;
  }

  bool get isOpen => _isOpen;
}
