import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/enumerates/materiais_enum.dart';

part 'procura_materiais_controller.g.dart';

class ProcuraMateriaisController = ProcuraMateriaisControllerBase
    with _$ProcuraMateriaisController;

abstract class ProcuraMateriaisControllerBase with Store {
  ProcuraMateriaisControllerBase() {
    getListaMateriais();
  }

  @observable
  String material = '';

  @observable
  List<String> listaMateriais = [];

  @action
  void getListaMateriais() {
    var lista = <String>[];
    for (var i = 0; i < MateriaisEnum.values.length; i++) {
      lista.add(MateriaisEnum.values[i].nome);
    }
    listaMateriais = lista;
  }

  @action
  void setMaterial(String value) {
    material = value;
  }
}
