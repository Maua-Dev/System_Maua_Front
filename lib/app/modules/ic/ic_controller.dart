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

  @computed
  List<String> get listaTitulosIc {
    var listaTitulos = <String>[];
    dadosTronco.forEach((element) {
      listaTitulos.add(element.tituloIc);
    });
    return listaTitulos;
  }

  @action
  Future<void> getDadosTronco() async {
    dadosTronco = await repository.getDadosTronco(tronco);
  }

  @action
  Future<void> setTronco(TroncoEnum value) async {
    tronco = value;
    await getDadosTronco();
  }
}
