import 'package:system_maua_front/app/modules/notas/pages/medias/models/filtros/filters_model.dart';
import 'filtros_medias_repository_interface.dart';

class FiltroMediasRepository implements IFiltroMediasRepository {
  FiltroMediasModel filtros = FiltroMediasModel(
    anos: ['2020', '2021', '2022'],
    primeiroSem: true,
    segundoSem: true,
    provas: true,
    trabalhos: true,
  );

  @override
  Future<FiltroMediasModel> getFiltros() {
    return Future.value(filtros);
  }
}
