
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas/models/vendas_model.dart';

abstract class IMuralVendasMateriaisRepository{
  Future<List<VendasMateriaisModel>> getVendas();
}