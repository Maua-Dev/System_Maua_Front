import 'avisos_model.dart';

class AvisosActionModel {
  bool _isOpen = false;
  final AvisosModel avisos;

  AvisosActionModel({required this.avisos});

  void changeStateIsOpen() {
    _isOpen = !_isOpen;
  }

  bool get isOpen => _isOpen;
}
