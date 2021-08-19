import 'package:mobx/mobx.dart';

part 'filtro_ano_controller.g.dart';

class FiltroAnoController = FiltroAnoControllerBase with _$FiltroAnoController;

abstract class FiltroAnoControllerBase with Store {
  @observable
  String filterValue = '2021';

  @action
  Future<void> changeFilter(String? newValue) async {
    filterValue = newValue!;
  }
}
