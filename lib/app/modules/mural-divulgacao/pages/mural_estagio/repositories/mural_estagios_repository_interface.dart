import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_estagio/models/estagios_model.dart';

abstract class IMuralEstagiosRepository {
  Future<List<EstagiosModel>> getEstagios();
}
