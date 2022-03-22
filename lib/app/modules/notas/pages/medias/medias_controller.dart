import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/repositories/medias/medias_repository_interface.dart';
import 'models/medias/medias_model.dart';

part 'medias_controller.g.dart';

class MediasController = MediasControllerBase with _$MediasController;

abstract class MediasControllerBase with Store {

  final IMediasRepository mediasRepository;

  MediasControllerBase(this.mediasRepository) {
    getMedias();
  }

  @computed
  int get mediaMaua => 6;

  @computed
  String get mediaGeral => medias.mediaGeral.toString();

  @observable
  MediasModel medias = MediasModel.newInstance();

  @action
  Future<void> getMedias() async {
    medias = await mediasRepository.getMedias();
  }
}
