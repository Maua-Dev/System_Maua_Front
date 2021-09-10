import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/models/vendas_materiais_model.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/repositories/mural_vendas_materiais_repository_interface.dart';

class MuralVendasMateriaisRepository implements ImuralVendasMateriaisRepository{
  var listaVendas = [
    VendasMateriaisModel(
      nomeProduto: 'Livro de Cálculo',
      precoProduto: 'RS 50,00'),
    VendasMateriaisModel(
      nomeProduto: 'Livro de Termodinâmica',
      precoProduto: 'RS 50,00'),
    VendasMateriaisModel(
      nomeProduto: 'Apostila Fisica I',
      precoProduto: 'RS 30,00'),
    VendasMateriaisModel(
      nomeProduto: 'Calculadora CASIO',
      precoProduto: 'RS 25,50'),
    VendasMateriaisModel(
      nomeProduto: 'Caderno de plástico',
      precoProduto: 'RS 7,20'),
    VendasMateriaisModel(
      nomeProduto: 'Livro de Cálculo',
      precoProduto: 'RS 50,00'),
    VendasMateriaisModel(
      nomeProduto: 'Livro de Cálculo',
      precoProduto: 'RS 50,00'),
  ];

  @override
  Future<List<VendasMateriaisModel>> getVendas() {
    return Future.value(listaVendas);
  }
}