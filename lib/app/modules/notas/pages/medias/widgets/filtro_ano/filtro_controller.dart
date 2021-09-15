import 'package:mobx/mobx.dart';

part 'filtro_controller.g.dart';

class FiltroController = FiltroControllerBase with _$FiltroController;

abstract class FiltroControllerBase with Store {
  @observable
  //alterar para buscar o ano mais atual que o usuário possui
  String ano = '2021';

  @action
  Future<void> changeFilter(String? newValue) async {
    ano = newValue!;
  }
}
