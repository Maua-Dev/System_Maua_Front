import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/enumerates/materiais_enum.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/models/informacao_material_model.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/pages/lista_vendas/lista_vendas_materiais_controller.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/repositories/mural_vendas_materiais_repository_interface.dart';

import 'lista_vendas_controller_test.mocks.dart';

@GenerateMocks([IMuralVendasMateriaisRepository])
void main() {
  IMuralVendasMateriaisRepository repository =
      MockIMuralVendasMateriaisRepository();
  late ListaVendasMateriaisController controller;

  var listaVendas = [
    InformacaoMaterialModel(
        nomeMaterial: 'Caderno Resistencia dos Materiais',
        contatoVendedorMaterial: '(11) 12345-1234',
        custoMaterial: 'R\$ 12,20',
        descricaoMaterial: 'Livro em bom estado com 2 anos de uso',
        imagemMaterial: 'https://avatars.githubusercontent.com/u/24724451?v=4',
        nomeVendedorMaterial: 'Ana Clara',
        materialEnum: MateriaisEnum.CADERNORESMAT,
        idMaterial: 1),
    InformacaoMaterialModel(
        nomeMaterial: 'Caderno Resistencia dos Materiais',
        contatoVendedorMaterial: '(11) 12345-1234',
        custoMaterial: 'R\$ 12,20',
        descricaoMaterial: 'Livro em bom estado com 2 anos de uso',
        imagemMaterial: 'https://avatars.githubusercontent.com/u/24724451?v=4',
        nomeVendedorMaterial: 'Ana Clara',
        materialEnum: MateriaisEnum.CADERNORESMAT,
        idMaterial: 2),
  ];

  setUpAll(() {
    when(repository.getVendas(MateriaisEnum.CADERNORESMAT))
        .thenAnswer((_) async => listaVendas);
    controller = ListaVendasMateriaisController(
        idMaterial: MateriaisEnum.CADERNORESMAT, repository: repository);
  });

  test('[TEST] - getVendas', () async {
    await controller.getVendas();
    expect(controller.listaVendas, listaVendas);
  });
}
