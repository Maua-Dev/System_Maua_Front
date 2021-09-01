import 'faq_model.dart';

class FaqPanelModel {
  bool _isOpen = false;
  final FaqModel softwares;

  FaqPanelModel({required this.softwares});

  void changeStateIsOpen() {
    _isOpen = !_isOpen;
  }

  bool get isOpen => _isOpen;
}
