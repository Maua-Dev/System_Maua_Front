import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/materias-aulas/models/materias_aulas_model.dart';
import 'package:system_maua_front/app/modules/materias/repositories/materias_repository_interface.dart';
import 'package:system_maua_front/app/shared/models/generic_fields_model.dart';

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
  void getListaAulas() async {
    listaAulasNome = await repository.getListaAulas(codigoMateria);
  }
}
