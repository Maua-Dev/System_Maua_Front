import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/ic/repositories/ic_repository_interface.dart';
import 'package:system_maua_front/app/shared/enumerates/tronco_enum.dart';

import 'models/ic_model.dart';

part 'ic_controller.g.dart';

class IcController = IcControllerBase with _$IcController;

abstract class IcControllerBase with Store {
  final IIcRepository repository;

  IcControllerBase({required this.repository}) {
    getDadosTronco();
  }

  @observable
  TroncoEnum tronco = TroncoEnum.ADM;

  @observable
  List<IcModel> dadosTronco = [];

  @action
  Future<void> getDadosTronco() async {
    dadosTronco = await repository.getDadosTronco(tronco);
  }

  @action
  void setTronco(TroncoEnum value) {
    tronco = value;
    getDadosTronco();
  }
}
