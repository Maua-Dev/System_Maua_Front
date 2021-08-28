import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/medias/models/filtros/filters_model.dart';
import 'package:system_maua_front/app/modules/medias/models/medias/medias_model.dart';
import 'package:system_maua_front/app/modules/medias/repositories/filtros/filtros_medias_repository_interface.dart';
import 'package:system_maua_front/app/modules/medias/repositories/medias/medias_repository_interface.dart';
import 'package:system_maua_front/app/modules/medias/widgets/filtro_ano/filtro_controller.dart';

part 'medias_controller.g.dart';

class MediasController = MediasControllerBase with _$MediasController;

abstract class MediasControllerBase with Store {
  var controllerFiltroAno = Modular.get<FiltroController>();

  final IFiltroMediasRepository filtrosRepository;
  final IMediasRepository mediasRepository;

  MediasControllerBase(this.mediasRepository, this.filtrosRepository) {
    getFiltros();
    getMedias();
  }

  @computed
  int get mediaMaua => 6;

  @observable
  MediasModel medias = MediasModel(
    nomeGraduacao: '',
    ano: 2021,
    medias: [],
  );

  @observable
  FiltroMediasModel filtros = FiltroMediasModel(
    anos: [],
    primeiroSem: true,
    segundoSem: true,
    provas: true,
    trabalhos: true,
  );

  @action
  Future<void> getFiltros() async {
    filtros = await filtrosRepository.getFiltros();
  }

  @action
  Future<void> getMedias() async {
    medias = await mediasRepository.getMedias();
    print(controllerFiltroAno.ano);
  }

  @action
  Future<void> toggleOpcao(String label) async {
    var primeiroSem = filtros.primeiroSem;
    var segundoSem = filtros.segundoSem;
    var provas = filtros.provas;
    var trabalhos = filtros.trabalhos;

    switch (label) {
      case '1º Semestre':
        if (filtros.segundoSem) {
          print(segundoSem);
          primeiroSem = !filtros.primeiroSem;
        }
        break;
      case '2º Semestre':
        if (filtros.primeiroSem) {
          segundoSem = !filtros.segundoSem;
        }
        break;
      case 'Provas':
        if (filtros.trabalhos) {
          provas = !filtros.provas;
        }
        break;
      case 'Trabalhos':
        if (filtros.provas) {
          trabalhos = !filtros.trabalhos;
        }
        break;
      default:
    }

    filtros = FiltroMediasModel(
      anos: filtros.anos,
      primeiroSem: primeiroSem,
      segundoSem: segundoSem,
      provas: provas,
      trabalhos: trabalhos,
    );
    print(label);
  }

  @action
  Future<void> escolheAno() async {
    // todasMedias = await mediasRepository.getMedias();
    print(controllerFiltroAno.ano);
  }
}
