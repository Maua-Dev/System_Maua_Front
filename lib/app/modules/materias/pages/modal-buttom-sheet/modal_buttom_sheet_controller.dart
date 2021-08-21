import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/materias/models/materias_model.dart';
import 'package:system_maua_front/app/modules/materias/repositories/materias_repository_interface.dart';

import 'models/generic_fields_model.dart';

part 'modal_buttom_sheet_controller.g.dart';

class ModalButtomController = ModalButtomControllerBase
    with _$ModalButtomController;

abstract class ModalButtomControllerBase with Store {
  final IMateriasRepository repository;
  final String codigoMateria;

  ModalButtomControllerBase(
      {required this.codigoMateria, required this.repository}) {
    getListaAulas();
  }

  @observable
  MateriasModel materia = MateriasModel.newInstance();

  @observable
  String valorDigitado = '';

  List<GenericFieldsModel> get getListaAulasNomes => materia.listaAulas!
      .map((e) => GenericFieldsModel(caption: e.tituloPagina, id: e.idPagina))
      .toList();

  @action
  Future<void> getListaAulas() async {
    materia = await repository.getMateriaEspecifica(codigoMateria);
  }

  @action
  void onChangedValorDigitado(String value) {
    valorDigitado = value;
  }

  @action
  Future<void> onAulaSelecionada(int value) async {
    await Modular.to.pushNamed(
      'aula/$value',
      arguments: materia,
    );
  }
}
