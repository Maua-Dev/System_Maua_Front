class InformacaoMaterialModel {
  final String? imagemMaterial;
  final String nomeMaterial;
  final double? custoMaterial;
  final String? descricaoMaterial;
  final String contatoVendedorMaterial;
  final String? nomeVendedorMaterial;

  InformacaoMaterialModel(
      {this.imagemMaterial,
      required this.nomeMaterial,
      this.custoMaterial,
      this.descricaoMaterial,
      required this.contatoVendedorMaterial,
      this.nomeVendedorMaterial});

  factory InformacaoMaterialModel.newInstance() {
    return InformacaoMaterialModel(
        contatoVendedorMaterial: '',
        nomeMaterial: '',
        custoMaterial: null,
        descricaoMaterial: null,
        imagemMaterial: null,
        nomeVendedorMaterial: null);
  }
}
