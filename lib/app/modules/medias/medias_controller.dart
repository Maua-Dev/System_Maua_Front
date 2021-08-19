import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/medias/repositories/medias_repository_interface.dart';
import 'package:system_maua_front/app/shared/components/filter_period/filter_period_controller.dart';

import 'models/media_model.dart';
import 'models/medias_model.dart';

part 'medias_controller.g.dart';

class MediasController = MediasControllerBase with _$MediasController;

abstract class MediasControllerBase with Store {
  var controllerFilterPeriod = Modular.get<FilterPeriodController>();

  final IMediasRepository repository;

  MediasControllerBase(this.repository) {
    getMedias();
  }

  @computed
  int get mediaMaua => 6;

  @observable
  // List<MediasModel> todasMedias = [];
  List<MediasModel> todasMedias = [
    MediasModel(
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
          media: 6.0,
        ),
        MediaModel(
          materia: 'Matemática computacional',
        ),
        MediaModel(
          materia: 'Matemática computacional',
        ),
        MediaModel(
          materia: 'Matemática computacional',
        ),
        MediaModel(
          materia: 'Matemática computacional',
        ),
        MediaModel(
          materia: 'Matemática computacional',
        ),
        MediaModel(
          materia: 'Matemática computacional',
        ),
        MediaModel(
          materia: 'Matemática computacional',
        ),
        MediaModel(
          materia: 'Estrutura de dados',
          media: 10.0,
        )
      ],
    ),
    MediasModel(
      nomeGraduacao: 'Engenharia',
      ano: 2020,
      medias: [
        MediaModel(
          materia: 'Cálculo Diferencial e Integral I',
          media: 8.0,
        ),
        MediaModel(
          materia: 'Física I',
          media: 5.0,
        ),
        MediaModel(
          materia: 'Química Geral',
          media: 6.0,
        ),
        MediaModel(
          materia: 'Fundamentos de Engenharia',
        ),
        MediaModel(
          materia: 'Desenho Técnico',
          media: 10.0,
        )
      ],
    ),
  ];

  @action
  Future<void> getMedias() async {
    todasMedias = await repository.getMedias();
    print(controllerFilterPeriod.filterValue);
  }
}
