import 'package:system_maua_front/app/modules/calendario/models/evento_model.dart';

abstract class ICalendarioRepository {
  Future<List<EventoModel>> getAvaliacoes();
}
