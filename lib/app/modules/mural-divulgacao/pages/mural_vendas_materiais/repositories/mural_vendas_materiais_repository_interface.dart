

import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/models/vendas_materiais_model.dart';

abstract class ImuralVendasMateriaisRepository{
  Future<List<VendasMateriaisModel>> getVendas();
}