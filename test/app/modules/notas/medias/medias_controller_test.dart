import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/app_module.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/medias_controller.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/models/medias/media_model.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/models/medias/medias_model.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/repositories/medias/medias_repository_interface.dart';

import 'medias_controller_test.mocks.dart';

@GenerateMocks([IMediasRepository])
void main() {
  initModule(AppModule());
  IMediasRepository mediasRepository = MockIMediasRepository();

  late MediasController mediasController;

  var mediasTest = MediasModel(
    mediaGeral: 9.0,
    nomeGraduacao: 'Engenharia de Computação',
    ano: 2021,
    medias: [
      MediaModel(
        materia: 'Cálculo Diferencial e Integral II',
        media: 8.0,
      ),
      MediaModel(
        materia: 'Física II',
        media: 7.0,
      ),
      MediaModel(
        materia: 'Resistência dos materiais',
        media: 5.0,
      ),
      MediaModel(
        materia: 'Matemática computacional',
      ),
      MediaModel(
        materia: 'Estrutura de dados',
        media: 10.0,
      ),
      MediaModel(
        materia: 'Resistência dos materiais',
        media: 5.0,
      ),
      MediaModel(
        materia: 'Resistência dos materiais',
        media: 6.0,
      ),
      MediaModel(
        materia: 'Resistência dos materiais',
        media: 6.0,
      ),
      MediaModel(
        materia: 'Resistência dos materiais',
        media: 6.0,
      ),
      MediaModel(
        materia: 'Resistência dos materiais',
        media: 6.0,
      ),
      MediaModel(
        materia: 'Resistência dos materiais',
        media: 6.0,
      ),
    ],
  );

  setUpAll(() {
    when(mediasRepository.getMedias()).thenAnswer((_) async => mediasTest);
    mediasController = MediasController(mediasRepository);
  });

  test('[TEST] - getMedias', () async {
    await mediasController.getMedias();
    expect(mediasController.medias, mediasTest);
  });
}
