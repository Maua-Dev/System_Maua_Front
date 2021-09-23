import 'package:system_maua_front/app/modules/help/pages/help-intercambio/oportunidades_abertas/models/universidade_model.dart';

abstract class IOportunidadeRepository {
  Future<List<UniversidadeModel>> getUniversidade();
}
