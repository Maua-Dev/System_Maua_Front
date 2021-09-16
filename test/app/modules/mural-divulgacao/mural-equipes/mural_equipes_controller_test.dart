import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_equipes/models/equipes_model.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_equipes/mural_equipes_controller.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_equipes/repositories/mural_equipes_repository_interface.dart';

import 'mural_equipes_controller_test.mocks.dart';

@GenerateMocks([IMuralEquipesRepository])
void main() {
  IMuralEquipesRepository repository = MockIMuralEquipesRepository();
  late MuralEquipesController controller;

  var listaEquipes = [
    EquipesModel(
        nomeEquipe: 'Atlética Mauá',
        descricaoEquipe:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan tellus in massa sagittis hendrerit. Vivamus feugiat, lacus nec tincidunt tristique, nulla urna rhoncus nulla, vel bibendum est ipsum ac mi. Proin quis sollicitudin metus. Nunc id tortor at leo feugiat sagittis. Fusce sodales risus ut suscipit viverra. Proin vitae purus egestas, ornare felis id, blandit quam. Nunc fermentum magna a nisl lacinia maximus eget ut metus. Fusce sed volutpat tellus. Cras pretium pharetra diam.'),
    EquipesModel(
        nomeEquipe: 'Enactus',
        descricaoEquipe:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan tellus in massa sagittis hendrerit. Vivamus feugiat, lacus nec tincidunt tristique, nulla urna rhoncus nulla, vel bibendum est ipsum ac mi. Proin quis sollicitudin metus. Nunc id tortor at leo feugiat sagittis. Fusce sodales risus ut suscipit viverra. Proin vitae purus egestas, ornare felis id, blandit quam. Nunc fermentum magna a nisl lacinia maximus eget ut metus. Fusce sed volutpat tellus. Cras pretium pharetra diam.'),
    EquipesModel(
        nomeEquipe: 'Mauá-e',
        descricaoEquipe:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan tellus in massa sagittis hendrerit. Vivamus feugiat, lacus nec tincidunt tristique, nulla urna rhoncus nulla, vel bibendum est ipsum ac mi. Proin quis sollicitudin metus. Nunc id tortor at leo feugiat sagittis. Fusce sodales risus ut suscipit viverra. Proin vitae purus egestas, ornare felis id, blandit quam. Nunc fermentum magna a nisl lacinia maximus eget ut metus. Fusce sed volutpat tellus. Cras pretium pharetra diam.'),
    EquipesModel(
        nomeEquipe: 'Dev Community',
        descricaoEquipe:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan tellus in massa sagittis hendrerit. Vivamus feugiat, lacus nec tincidunt tristique, nulla urna rhoncus nulla, vel bibendum est ipsum ac mi. Proin quis sollicitudin metus. Nunc id tortor at leo feugiat sagittis. Fusce sodales risus ut suscipit viverra. Proin vitae purus egestas, ornare felis id, blandit quam. Nunc fermentum magna a nisl lacinia maximus eget ut metus. Fusce sed volutpat tellus. Cras pretium pharetra diam.'),
  ];

  setUpAll(() {
    when(repository.getEquipes()).thenAnswer((_) async => listaEquipes);
    controller = MuralEquipesController(repository);
  });

  test('[TEST] - getEquipes', () async {
    await controller.getEquipes();
    expect(controller.listaEquipes, listaEquipes);
  });

  test('[TEST] - setSoftwaresAction', () async {
    controller.getListaPanelEquipes();
    expect(controller.listaPanelEquipes.isNotEmpty, true);
  });

  test('[TEST] - trocaOpen', () {
    controller.trocaOpen(0);
    expect(controller.listaPanelEquipes[0].isOpen, true);
  });
}
