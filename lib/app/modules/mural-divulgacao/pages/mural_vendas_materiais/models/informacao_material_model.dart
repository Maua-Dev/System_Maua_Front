import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/enumerates/materiais_enum.dart';

class InformacaoMaterialModel {
  final String? imagemMaterial;
  final MateriaisEnum? idMaterial;
  final String nomeMaterial;
  final String? custoMaterial;
  final String? descricaoMaterial;
  final String contatoVendedorMaterial;
  final String? nomeVendedorMaterial;

  InformacaoMaterialModel(
      {this.imagemMaterial,
      required this.idMaterial,
      required this.nomeMaterial,
      this.custoMaterial,
      this.descricaoMaterial,
      required this.contatoVendedorMaterial,
      this.nomeVendedorMaterial});

  factory InformacaoMaterialModel.newInstance() {
    return InformacaoMaterialModel(
        contatoVendedorMaterial: '',
        idMaterial: null,
        nomeMaterial: '',
        custoMaterial: null,
        descricaoMaterial: null,
        imagemMaterial: null,
        nomeVendedorMaterial: null);
  }
}
