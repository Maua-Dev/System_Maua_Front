import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/enumerates/materiais_enum.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/models/informacao_material_model.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/pages/informacao_material/informacao_material_controller.dart';

void main() {
  late InformacaoMaterialController controller;

  var informacaoMaterial = InformacaoMaterialModel(
    nomeMaterial: 'Caderno Resistencia dos Materiais',
    contatoVendedorMaterial: '(11) 12345-1234',
    custoMaterial: 'R\$ 12,20',
    descricaoMaterial: 'Livro em bom estado com 2 anos de uso',
    imagemMaterial: 'https://avatars.githubusercontent.com/u/24724451?v=4',
    nomeVendedorMaterial: 'Ana Clara',
    idMaterial: MateriaisEnum.CADERNORESMAT,
  );

  setUpAll(() {
    controller = InformacaoMaterialController(
        informacaoMaterialModel: informacaoMaterial);
  });

  test('[TEST] - getMaterialEspecifico', () async {
    expect(controller.material, informacaoMaterial);
  });
}
