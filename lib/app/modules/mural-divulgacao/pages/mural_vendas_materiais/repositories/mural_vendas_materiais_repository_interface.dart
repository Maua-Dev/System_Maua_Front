import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/enumerates/materiais_enum.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/models/informacao_material_model.dart';

abstract class IMuralVendasMateriaisRepository {
  Future<List<InformacaoMaterialModel>> getVendas(MateriaisEnum idMaterial);
}
