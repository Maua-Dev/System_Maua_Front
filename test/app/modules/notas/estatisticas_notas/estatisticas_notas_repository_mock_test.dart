import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/notas/pages/estatisticas/repositories/estatisticas_repository.dart';

void main() {
  late EstatisticasRepository estatisticasRepository;

  setUpAll(() {
    estatisticasRepository = EstatisticasRepository();
  });
  test('[TEST] - getEstatisticasMedias', () {
    expect(estatisticasRepository.medias.mediaFinal, 6);
    expect(estatisticasRepository.medias.mediaParcial, 5);
    expect(estatisticasRepository.medias.mediaTronco, 8);
  });

  test('[TEST] - getEstatisticasMedias', () {
    expect(estatisticasRepository.dadosGraficoDeBarras.dados.isNotEmpty, true);
  });
}
