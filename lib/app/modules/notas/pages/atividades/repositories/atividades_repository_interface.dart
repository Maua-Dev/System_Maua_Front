import 'package:system_maua_front/app/modules/notas/pages/atividades/models/atividade_model.dart';

abstract class IAtividadesRepository {
  Future<List<AtividadeModel>> getAtividades();
}
