import 'package:system_maua_front/app/modules/notas/pages/estatisticas/models/dados_grafico_de_barras.dart';
import 'package:system_maua_front/app/modules/notas/pages/estatisticas/models/estatisticas_medias_model.dart';

abstract class IEstatisticasRepository {
  Future<DadosGraficoDeBarrasModel> getDadosGraficoDeBarras();
  Future<EstatisticasMediasModel> getEstatisticasMedias();
}
