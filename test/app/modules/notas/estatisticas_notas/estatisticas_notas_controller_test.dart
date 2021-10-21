import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/notas/pages/estatisticas/estatisticas_notas_controller.dart';
import 'package:system_maua_front/app/modules/notas/pages/estatisticas/models/dados_grafico_de_barras.dart';
import 'package:system_maua_front/app/modules/notas/pages/estatisticas/models/estatisticas_medias_model.dart';
import 'package:system_maua_front/app/modules/notas/pages/estatisticas/repositories/estatisticas_repository_interface.dart';

import 'estatisticas_notas_controller_test.mocks.dart';

@GenerateMocks([IEstatisticasRepository])
void main() {
  IEstatisticasRepository estatisticasRepository =
      MockIEstatisticasRepository();

  late EstatisticasController estatisticasController;

  var dadosGraficoDeBarrasTeste = DadosGraficoDeBarrasModel(
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

  var mediasTeste =
      EstatisticasMediasModel(mediaFinal: 6, mediaParcial: 5, mediaTronco: 8);

  setUpAll(() {
    when(estatisticasRepository.getEstatisticasMedias())
        .thenAnswer((_) async => mediasTeste);
    when(estatisticasRepository.getDadosGraficoDeBarras())
        .thenAnswer((_) async => dadosGraficoDeBarrasTeste);
    estatisticasController = EstatisticasController(estatisticasRepository);
  });

  test('[TEST] - getEstatisticasMedias', () async {
    await estatisticasController.getEstatisticasMedias();
    expect(estatisticasController.medias, mediasTeste);
  });

  test('[TEST] - getDadosGraficoDeBarras', () async {
    await estatisticasController.getDadosGraficoDeBarras();
    expect(
        estatisticasController.dadosGraficoDeBarras, dadosGraficoDeBarrasTeste);
  });
}
