import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_equipes/models/equipes_model.dart';

class EquipesPanelModel {
  final EquipesModel equipes;
  bool _isOpen = false;

  EquipesPanelModel({required this.equipes});

  void changeStateIsOpen() {
    _isOpen = !_isOpen;
  }

  bool get isOpen => _isOpen;
}
