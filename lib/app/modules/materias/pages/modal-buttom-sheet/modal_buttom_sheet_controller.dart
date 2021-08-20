import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/materias/pages/materias-aulas/models/materias_aulas_model.dart';
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
  List<MateriasAulasModel> listaAulasNome = [];

  @observable
  String valorDigitado = '';

  List<GenericFieldsModel> get getListaAulasNomes => listaAulasNome
      .map((e) => GenericFieldsModel(caption: e.tituloPagina, id: e.idPagina))
      .toList();

  @action
  Future<void> getListaAulas() async {
    listaAulasNome = await repository.getListaAulas(codigoMateria);
  }

  @action
  void onChangedValorDigitado(String value) {
    valorDigitado = value;
  }

  @action
  Future<void> onSuggestionSelected(int value) async {
    await Modular.to
        .pushNamed('/materias/aula/$value', arguments: listaAulasNome[value]);
  }
}
