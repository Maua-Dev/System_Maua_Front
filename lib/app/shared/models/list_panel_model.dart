class ListPanelModel {
  final dynamic model;
  bool _isOpen = false;

  ListPanelModel({required this.model});

  void changeStateIsOpen() {
    _isOpen = !_isOpen;
  }

  bool get isOpen => _isOpen;
}
