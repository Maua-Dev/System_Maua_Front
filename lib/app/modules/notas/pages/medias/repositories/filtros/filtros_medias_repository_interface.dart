import 'package:system_maua_front/app/modules/notas/pages/medias/models/filtros/filters_model.dart';

abstract class IFiltroMediasRepository {
  Future<FiltroMediasModel> getFiltros();
}
