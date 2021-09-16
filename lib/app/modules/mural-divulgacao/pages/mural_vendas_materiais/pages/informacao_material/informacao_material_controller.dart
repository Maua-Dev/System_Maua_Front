import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/models/informacao_material_model.dart';

part 'informacao_material_controller.g.dart';

class InformacaoMaterialController = InformacaoMaterialControllerBase
    with _$InformacaoMaterialController;

abstract class InformacaoMaterialControllerBase with Store {
  final InformacaoMaterialModel informacaoMaterialModel;

  InformacaoMaterialControllerBase({required this.informacaoMaterialModel}) {
    getMaterialEspecifico();
  }

  @observable
  InformacaoMaterialModel material = InformacaoMaterialModel.newInstance();

  @action
  Future<void> getMaterialEspecifico() async {
    material = informacaoMaterialModel;
  }
}
