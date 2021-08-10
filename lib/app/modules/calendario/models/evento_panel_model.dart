import 'evento_model.dart';

class EventoPanelModel {
  bool _isOpen = false;
  final EventoModel evento;

  EventoPanelModel({required this.evento});

  void changeStateIsOpen() {
    _isOpen = !_isOpen;
  }

  bool get isOpen => _isOpen;
}
