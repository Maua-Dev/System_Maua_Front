import 'package:system_maua_front/app/modules/notas/pages/medias/models/medias/media_model.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/models/medias/medias_model.dart';
import 'medias_repository_interface.dart';

class MediasRepository implements IMediasRepository {
  MediasModel todasMedias = MediasModel(
    nomeGraduacao: 'Engenharia de Computação',
    ano: 2021,
    medias: [
      MediaModel(
        materia: 'Cálculo Diferencial e Integral II',
        media: 8.5,
      ),
      MediaModel(
        materia: 'Física II',
        media: 7.5,
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

  @override
  Future<MediasModel> getMedias() {
    return Future.value(todasMedias);
  }
}
