import 'softwares_model.dart';

class SoftwaresPanelModel {
  bool _isOpen = false;
  final SoftwaresModel softwares;

  SoftwaresPanelModel({required this.softwares});

  void changeStateIsOpen() {
    _isOpen = !_isOpen;
  }

  bool get isOpen => _isOpen;
}
