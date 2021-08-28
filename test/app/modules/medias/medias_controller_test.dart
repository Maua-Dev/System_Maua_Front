import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/app_module.dart';
import 'package:system_maua_front/app/modules/medias/medias_controller.dart';
import 'package:system_maua_front/app/modules/medias/models/filtros/filters_model.dart';
import 'package:system_maua_front/app/modules/medias/models/medias/media_model.dart';
import 'package:system_maua_front/app/modules/medias/models/medias/medias_model.dart';
import 'package:system_maua_front/app/modules/medias/repositories/filtros/filtros_medias_repository_interface.dart';
import 'package:system_maua_front/app/modules/medias/repositories/medias/medias_repository_interface.dart';

import 'medias_controller_test.mocks.dart';

@GenerateMocks([IFiltroMediasRepository, IMediasRepository])
void main() {
  initModule(AppModule());
  IFiltroMediasRepository filtroRepository = MockIFiltroMediasRepository();
  IMediasRepository mediasRepository = MockIMediasRepository();

  late MediasController mediasController;

  var filtrosTest = FiltroMediasModel(
    anos: ['2020', '2021', '2022'],
    primeiroSem: true,
    segundoSem: true,
    provas: true,
    trabalhos: true,
  );

  var mediasTest = MediasModel(
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
    when(filtroRepository.getFiltros()).thenAnswer((_) async => filtrosTest);
    when(mediasRepository.getMedias()).thenAnswer((_) async => mediasTest);
    mediasController = MediasController(mediasRepository, filtroRepository);
  });

  test('[TEST] - getFiltros', () async {
    await mediasController.getFiltros();
    expect(mediasController.filtros, filtrosTest);
  });

  test('[TEST] - getMedias', () async {
    await mediasController.getMedias();
    expect(mediasController.medias, mediasTest);
  });
}
