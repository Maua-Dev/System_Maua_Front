import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/repositories/filtros/filtros_medias_repository.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/repositories/medias/medias_repository.dart';

void main() {
  late FiltroMediasRepository filtroMediasRepository;
  late MediasRepository mediasRepository;

  setUpAll(() {
    filtroMediasRepository = FiltroMediasRepository();
    mediasRepository = MediasRepository();
  });

  test('[TEST] - getFiltros', () {
    expect(filtroMediasRepository.filtros.anos.isNotEmpty, true);
    expect(filtroMediasRepository.filtros.primeiroSem, true | false);
    expect(filtroMediasRepository.filtros.segundoSem, true | false);
    expect(filtroMediasRepository.filtros.provas, true | false);
    expect(filtroMediasRepository.filtros.trabalhos, true | false);
  });

  test('[TEST] - getMedias', () {
    expect(mediasRepository.todasMedias.nomeGraduacao.isNotEmpty, true);
    expect(
        mediasRepository.todasMedias.ano.isOdd |
            mediasRepository.todasMedias.ano.isEven,
        true);
    expect(mediasRepository.todasMedias.medias.isNotEmpty, true);
  });
}
