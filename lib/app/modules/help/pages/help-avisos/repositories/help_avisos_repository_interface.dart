import 'package:system_maua_front/app/modules/help/pages/help-avisos/models/avisos_model.dart';

abstract class IHelpAvisosRepository {
  Future<List<AvisosModel>> getInformacaoAvisos();
}