import 'package:system_maua_front/app/modules/help/pages/help-estagio/page/guia-de-estagio/models/guia_de_estagio_model.dart';

abstract class IGuiaEstagioRepository {
  Future<List<GuiaEstagioModel>> getGuiaEstagio();
}
