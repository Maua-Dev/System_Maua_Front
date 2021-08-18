import 'package:mobx/mobx.dart';

part 'help_bolsas_controller.g.dart';

class HelpBolsasController = _HelpBolsasControllerBase
    with _$HelpBolsasController;

abstract class _HelpBolsasControllerBase with Store {
  @observable
  List<bool> isOpen = [false, false];

  @action
  void trocaOpen(int index) {
    var indexOpen = List<bool>.from(isOpen);
    indexOpen[index] = !indexOpen[index];
    isOpen = indexOpen;
  }
}
