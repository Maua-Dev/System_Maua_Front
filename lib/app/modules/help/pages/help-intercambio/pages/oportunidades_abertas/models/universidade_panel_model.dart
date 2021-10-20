import 'universidade_model.dart';

class UniversidadePanelModel {
  bool _isOpen = false;
  final UniversidadeModel universidade;

  UniversidadePanelModel({required this.universidade});

  void changeStateIsOpen() {
    _isOpen = !_isOpen;
  }

  bool get isOpen => _isOpen;
}
