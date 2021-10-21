import 'package:system_maua_front/app/modules/notas/pages/estatisticas/models/grafico_de_barras_model.dart';
import 'package:system_maua_front/app/modules/notas/pages/estatisticas/models/estatisticas_medias_model.dart';
import 'estatisticas_repository_interface.dart';

class EstatisticasRepository implements IEstatisticasRepository {
  var dadosGraficoDeBarras = DadosGraficoDeBarrasModel(
    dados: [
      DadoGraficoDeBarrasModel(nota: 'NE', quantidadeAlunos: 1),
      DadoGraficoDeBarrasModel(nota: '0', quantidadeAlunos: 3),
      DadoGraficoDeBarrasModel(nota: '1', quantidadeAlunos: 3),
      DadoGraficoDeBarrasModel(nota: '2', quantidadeAlunos: 2),
      DadoGraficoDeBarrasModel(nota: '3', quantidadeAlunos: 4),
      DadoGraficoDeBarrasModel(nota: '4', quantidadeAlunos: 6),
      DadoGraficoDeBarrasModel(nota: '5', quantidadeAlunos: 4),
      DadoGraficoDeBarrasModel(nota: '6', quantidadeAlunos: 10),
      DadoGraficoDeBarrasModel(nota: '7', quantidadeAlunos: 11),
      DadoGraficoDeBarrasModel(nota: '8', quantidadeAlunos: 14),
      DadoGraficoDeBarrasModel(nota: '9', quantidadeAlunos: 4),
      DadoGraficoDeBarrasModel(nota: '10', quantidadeAlunos: 5),
    ],
  );

  var medias =
      EstatisticasMediasModel(mediaFinal: 6, mediaParcial: 5, mediaTronco: 8);

  @override
  Future<DadosGraficoDeBarrasModel> getDadosGraficoDeBarras() {
    return Future.value(dadosGraficoDeBarras);
  }

  @override
  Future<EstatisticasMediasModel> getEstatisticasMedias() {
    return Future.value(medias);
  }
}
