import 'package:system_maua_front/app/modules/calendario/models/avaliacao_model.dart';

abstract class ICalendarioRepository {
  Future<List<AvaliacaoModel>> getAvaliacoes();
}
