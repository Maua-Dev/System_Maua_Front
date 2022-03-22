import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/repositories/medias/medias_repository.dart';

void main() {
  late MediasRepository mediasRepository;

  setUpAll(() {
    mediasRepository = MediasRepository();
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
