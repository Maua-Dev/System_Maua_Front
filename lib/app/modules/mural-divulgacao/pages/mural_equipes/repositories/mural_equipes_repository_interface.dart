import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_equipes/models/equipes_model.dart';

abstract class IMuralEquipesRepositoryInterface {
  Future<List<EquipesModel>> getEquipes();
}
