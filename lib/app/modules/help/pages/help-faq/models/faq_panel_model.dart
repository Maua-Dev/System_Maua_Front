import 'faq_model.dart';

class FaqPanelModel {
  bool _isOpen = false;
  final FaqModel faq;

  FaqPanelModel({required this.faq});

  void changeStateIsOpen() {
    _isOpen = !_isOpen;
  }

  bool get isOpen => _isOpen;
}
