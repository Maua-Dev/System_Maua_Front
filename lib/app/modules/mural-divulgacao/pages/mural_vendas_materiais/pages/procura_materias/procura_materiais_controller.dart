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
  List<MateriaisEnum> listaMateriais = [];

  @observable
  List<String> nomesMateriais = [];

  @action
  void getListaMateriais() {
    var lista = <MateriaisEnum>[];
    var listaString = <String>[];
    for (var i = 0; i < MateriaisEnum.values.length; i++) {
      lista.add(MateriaisEnum.values[i]);
      listaString.add(MateriaisEnum.values[i].nome);
    }
    listaMateriais = lista;
    nomesMateriais = listaString;
  }

  @action
  void setMaterial(String value) {
    material = value;
  }
}
