class VendasMateriaisModel {
  final String nomeProduto;
  final double? precoProduto;

  VendasMateriaisModel(
    {required this.nomeProduto,
    this.precoProduto}
  );

  factory VendasMateriaisModel.newInstance(){
    return VendasMateriaisModel(
      nomeProduto: '', precoProduto: null);
  }
} 