import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/repositories/filtros/filtros_medias_repository_interface.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/repositories/medias/medias_repository_interface.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/widgets/filtro_ano/filtro_controller.dart';

import 'models/filtros/filters_model.dart';
import 'models/medias/medias_model.dart';

part 'medias_controller.g.dart';

class MediasController = MediasControllerBase with _$MediasController;

abstract class MediasControllerBase with Store {
  var controllerFiltroAno = Modular.get<FiltroController>();

  final IFiltroMediasRepository filtrosRepository;
  final IMediasRepository mediasRepository;

  MediasControllerBase(this.mediasRepository, this.filtrosRepository) {
    getFiltros();
    getMedias();
    getCoeficiente();
  }

  @computed
  int get mediaMaua => 6;

  @observable
  MediasModel medias = MediasModel.newInstance();

  @observable
  var coeficienteRendimento = 0.0;

  @computed
  String get coeficienteRendimentoComputado =>
      coeficienteRendimento.toString().replaceAll('.', ',');

  @observable
  FiltroMediasModel filtros = FiltroMediasModel.newInstance();

  @action
  Future<void> getFiltros() async {
    filtros = await filtrosRepository.getFiltros();
  }

  @action
  Future<void> getMedias() async {
    medias = await mediasRepository.getMedias();
  }

  @action
  Future<void> getCoeficiente() async {
    coeficienteRendimento = await mediasRepository.getCoeficienteRendimento();
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
  }
}
