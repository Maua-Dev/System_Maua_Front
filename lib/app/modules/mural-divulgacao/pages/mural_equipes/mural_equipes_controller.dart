import 'package:mobx/mobx.dart';

import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_equipes/models/equipes_model.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_equipes/repositories/mural_equipes_repository_interface.dart';

part 'mural_equipes_controller.g.dart';

class MuralEquipesController = _MuralEquipesControllerBase
    with _$MuralEquipesController;

abstract class _MuralEquipesControllerBase with Store {
  IMuralEquipesRepository repository;

  _MuralEquipesControllerBase(
    this.repository,
  );

  @observable
  List<EquipesModel> listaEquipes = List.empty();

  @action
  void getEquipes() async {
    listaEquipes = await repository.getEquipes();
  }
}
