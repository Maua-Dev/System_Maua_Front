

import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas/models/vendas_model.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas/repositories/mural_vendas_repository_interface.dart';

class MuralVendasMateriaisRepository implements IMuralVendasMateriaisRepository {
  var listaVendas = [
    VendasMateriaisModel(
      nomeProduto: 'Livro de Cálculo',
      precoProduto: 50.00 ,),
      VendasMateriaisModel(
      nomeProduto: 'Livro de Termodinâmica',
      precoProduto: 50.00 ,),
      VendasMateriaisModel(
      nomeProduto: 'Livro de Cálculo',
      precoProduto: 50.00 ,),
      VendasMateriaisModel(
      nomeProduto: 'Livro de Cálculo',
      precoProduto: 50.00 ,),
  ];

  @override
  Future<List<VendasMateriaisModel>> getVendas() {
    return Future.value(listaVendas);
  }
}