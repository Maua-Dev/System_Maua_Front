class ListPanelModel<T> {
  final T model;
  bool _isOpen = false;

  ListPanelModel({required this.model});

  void changeStateIsOpen() {
    _isOpen = !_isOpen;
  }

  bool get isOpen => _isOpen;
}
