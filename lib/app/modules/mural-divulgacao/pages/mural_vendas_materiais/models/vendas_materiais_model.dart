class VendasMateriaisModel {
  final String? nomeProduto;
  final String? precoProduto;

  VendasMateriaisModel(
    {required this.nomeProduto,
    required this.precoProduto,
    });

  factory VendasMateriaisModel.newInstance(){
    return VendasMateriaisModel(
      nomeProduto: '', precoProduto: '');
  }
} 