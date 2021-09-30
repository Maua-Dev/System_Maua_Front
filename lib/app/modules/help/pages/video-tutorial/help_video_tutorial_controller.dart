import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/help/pages/video-tutorial/models/video_tutorial_model.dart';
import 'package:system_maua_front/app/modules/help/pages/video-tutorial/repositories/help_video_tutorial_repository_interface.dart';

part 'help_video_tutorial_controller.g.dart';

class HelpVideoTutorialController = _HelpVideoTutorialControllerBase
    with _$HelpVideoTutorialController;

abstract class _HelpVideoTutorialControllerBase with Store {
  final IHelpVideoTutorialRepository repository;

  _HelpVideoTutorialControllerBase({required this.repository}) {
    getVideos();
  }

  @observable
  List<VideoTutorialModel> listaVideos = List.empty();

  @action
  Future<void> getVideos() async {
    listaVideos = await repository.getVideos();
  }
}
