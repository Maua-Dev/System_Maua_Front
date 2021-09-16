import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/enumerates/materiais_enum.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/models/informacao_material_model.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/repositories/mural_vendas_materiais_repository_interface.dart';

class MuralVendasMateriaisRepository
    implements IMuralVendasMateriaisRepository {
  var listaVendas = [
    InformacaoMaterialModel(
        nomeMaterial: 'Livro Calculo I',
        materialEnum: MateriaisEnum.LIVROCALCULOI,
        contatoVendedorMaterial: '(11) 12345-1234',
        custoMaterial: 'R\$ 12,20',
        descricaoMaterial: 'Livro em bom estado com 2 anos de uso',
        imagemMaterial: '',
        nomeVendedorMaterial: 'Ana Clara',
        idMaterial: 1),
    InformacaoMaterialModel(
        nomeMaterial: 'Caderno Física',
        contatoVendedorMaterial: '(11) 12345-1234',
        custoMaterial: 'R\$ 12,20',
        descricaoMaterial: 'Livro em bom estado com 2 anos de uso',
        imagemMaterial: '',
        nomeVendedorMaterial: 'Ana Clara',
        materialEnum: MateriaisEnum.LIVROFISICAI,
        idMaterial: 2),
    InformacaoMaterialModel(
        nomeMaterial: 'Caderno Resistencia dos Materiais',
        contatoVendedorMaterial: '(11) 12345-1234',
        custoMaterial: 'R\$ 12,20',
        descricaoMaterial: 'Livro em bom estado com 2 anos de uso',
        imagemMaterial: 'https://avatars.githubusercontent.com/u/24724451?v=4',
        nomeVendedorMaterial: 'Ana Clara',
        materialEnum: MateriaisEnum.CADERNORESMAT,
        idMaterial: 3),
    InformacaoMaterialModel(
        nomeMaterial: 'Caderno Resistencia dos Materiais',
        contatoVendedorMaterial: '(11) 12345-1234',
        custoMaterial: 'R\$ 12,20',
        descricaoMaterial: 'Livro em bom estado com 2 anos de uso',
        imagemMaterial: 'https://avatars.githubusercontent.com/u/24724451?v=4',
        nomeVendedorMaterial: 'Ana Clara',
        materialEnum: MateriaisEnum.CADERNORESMAT,
        idMaterial: 4),
    InformacaoMaterialModel(
        nomeMaterial: 'Caderno Física',
        contatoVendedorMaterial: '(11) 12345-1234',
        descricaoMaterial: 'Livro em bom estado com 2 anos de uso',
        imagemMaterial: 'https://avatars.githubusercontent.com/u/24724451?v=4',
        nomeVendedorMaterial: 'Ana Clara',
        materialEnum: MateriaisEnum.DOACOES,
        idMaterial: 5),
  ];

  @override
  Future<List<InformacaoMaterialModel>> getVendas(MateriaisEnum idMaterial) {
    var list = <InformacaoMaterialModel>[];
    for (var i = 0; i < listaVendas.length; i++) {
      if (listaVendas[i].materialEnum == idMaterial) {
        list.add(listaVendas[i]);
      }
    }
    return Future.value(list);
  }
}
