import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/notas/pages/estatisticas/repositories/estatisticas_repository_interface.dart';
import 'package:system_maua_front/app/modules/notas/pages/estatisticas/models/medias_model.dart';
import 'models/grafico_de_barras_model.dart';

part 'estatisticas_notas_controller.g.dart';

class EstatisticasController = EstatisticasControllerBase
    with _$EstatisticasController;

abstract class EstatisticasControllerBase with Store {
  final IEstatisticasRepository estatisticasRepository;

  EstatisticasControllerBase(this.estatisticasRepository) {
    getDadosGraficoDeBarras();
    getEstatisticasMedias();
  }

  @computed
  int get mediaMaua => 6;

  @computed
  String get mediaParcial => medias.mediaParcial != null
      ? medias.mediaParcial!.toStringAsFixed(1).replaceAll('.', ',')
      : '-';

  @computed
  String get mediaFinal => medias.mediaFinal != null
      ? medias.mediaFinal!.toStringAsFixed(1).replaceAll('.', ',')
      : '-';

  @computed
  String get mediaTronco => medias.mediaTronco != null
      ? medias.mediaTronco!.toStringAsFixed(1).replaceAll('.', ',')
      : '-';

  @computed
  String get mediaFinalArredondada =>
      medias.mediaFinal != null ? medias.mediaFinal!.round().toString() : 'NE';

  @observable
  DadosGraficoDeBarrasModel dadosGraficoDeBarras =
      DadosGraficoDeBarrasModel.newInstance();

  @observable
  EstatisticasMediasModel medias = EstatisticasMediasModel.newInstance();

  @action
  Future<void> getDadosGraficoDeBarras() async {
    dadosGraficoDeBarras =
        await estatisticasRepository.getDadosGraficoDeBarras();
  }

  @action
  Future<void> getEstatisticasMedias() async {
    medias = await estatisticasRepository.getEstatisticasMedias();
  }
}
