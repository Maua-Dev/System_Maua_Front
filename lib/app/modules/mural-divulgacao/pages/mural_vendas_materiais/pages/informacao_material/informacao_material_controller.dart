import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/repositories/mural_vendas_materiais_repository_interface.dart';

part 'informacao_material_controller.g.dart';

class InformacaoMaterialController = InformacaoMaterialControllerBase
    with _$InformacaoMaterialController;

abstract class InformacaoMaterialControllerBase with Store {
  final IMuralVendasMateriaisRepository? repository;
  final int idMaterial;

  InformacaoMaterialControllerBase({this.repository, required this.idMaterial});
}
