import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_equipes/models/equipes_model.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_equipes/repositories/mural_equipes_repository_interface.dart';

class MuralEquipesRepository implements IMuralEquipesRepository {
  var listaEquipes = [
    EquipesModel(
        contatoResponsavel: '4004-8000 ou darth@branquinho.com',
        nomeEquipe: 'Atlética Mauá',
        descricaoEquipe:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan tellus in massa sagittis hendrerit. Vivamus feugiat, lacus nec tincidunt tristique, nulla urna rhoncus nulla, vel bibendum est ipsum ac mi. Proin quis sollicitudin metus. Nunc id tortor at leo feugiat sagittis. Fusce sodales risus ut suscipit viverra. Proin vitae purus egestas, ornare felis id, blandit quam. Nunc fermentum magna a nisl lacinia maximus eget ut metus. Fusce sed volutpat tellus. Cras pretium pharetra diam.'),
    EquipesModel(
        nomeEquipe: 'Enactus',
        descricaoEquipe:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan tellus in massa sagittis hendrerit. Vivamus feugiat, lacus nec tincidunt tristique, nulla urna rhoncus nulla, vel bibendum est ipsum ac mi. Proin quis sollicitudin metus. Nunc id tortor at leo feugiat sagittis. Fusce sodales risus ut suscipit viverra. Proin vitae purus egestas, ornare felis id, blandit quam. Nunc fermentum magna a nisl lacinia maximus eget ut metus. Fusce sed volutpat tellus. Cras pretium pharetra diam.'),
    EquipesModel(
        contatoResponsavel: '4004-8000 ou darth@branquinho.com',
        nomeEquipe: 'Mauá-e',
        descricaoEquipe:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan tellus in massa sagittis hendrerit. Vivamus feugiat, lacus nec tincidunt tristique, nulla urna rhoncus nulla, vel bibendum est ipsum ac mi. Proin quis sollicitudin metus. Nunc id tortor at leo feugiat sagittis. Fusce sodales risus ut suscipit viverra. Proin vitae purus egestas, ornare felis id, blandit quam. Nunc fermentum magna a nisl lacinia maximus eget ut metus. Fusce sed volutpat tellus. Cras pretium pharetra diam.'),
    EquipesModel(
        contatoResponsavel: '4004-8000 ou darth@branquinho.com',
        nomeEquipe: 'Dev Community',
        descricaoEquipe:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan tellus in massa sagittis hendrerit. Vivamus feugiat, lacus nec tincidunt tristique, nulla urna rhoncus nulla, vel bibendum est ipsum ac mi. Proin quis sollicitudin metus. Nunc id tortor at leo feugiat sagittis. Fusce sodales risus ut suscipit viverra. Proin vitae purus egestas, ornare felis id, blandit quam. Nunc fermentum magna a nisl lacinia maximus eget ut metus. Fusce sed volutpat tellus. Cras pretium pharetra diam.'),
  ];

  @override
  Future<List<EquipesModel>> getEquipes() {
    return Future.value(listaEquipes);
  }
}
