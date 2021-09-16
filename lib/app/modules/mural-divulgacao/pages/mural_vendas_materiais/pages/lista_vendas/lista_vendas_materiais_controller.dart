import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/enumerates/materiais_enum.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/models/informacao_material_model.dart';

import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/repositories/mural_vendas_materiais_repository_interface.dart';

part 'lista_vendas_materiais_controller.g.dart';

class ListaVendasMateriaisController = _ListaVendasMateriaisControllerBase
    with _$ListaVendasMateriaisController;

abstract class _ListaVendasMateriaisControllerBase with Store {
  final IMuralVendasMateriaisRepository? repository;
  final MateriaisEnum idMaterial;

  _ListaVendasMateriaisControllerBase(
      {this.repository, required this.idMaterial}) {
    getVendas();
  }

  @observable
  List<InformacaoMaterialModel> listaVendas = List.empty();

  @action
  Future<void> getVendas() async {
    listaVendas = await repository!.getVendas(idMaterial);
  }

  @action
  void navigateTo(InformacaoMaterialModel informacaoMaterialModel) {
    Modular.to
        .pushNamed('/informacao-material', arguments: informacaoMaterialModel);
  }
}
