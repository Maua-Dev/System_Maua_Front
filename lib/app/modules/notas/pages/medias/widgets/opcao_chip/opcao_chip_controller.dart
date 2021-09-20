import 'package:mobx/mobx.dart';

part 'opcao_chip_controller.g.dart';

class OpcaoChipController = OpcaoChipControllerBase with _$OpcaoChipController;

abstract class OpcaoChipControllerBase with Store {
  @observable
  bool selected = true;

  @action
  Future<void> toggleOpcao(String label) async {
    selected = !selected;
  }
}
