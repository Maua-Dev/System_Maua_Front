import 'package:system_maua_front/app/modules/help/pages/video-tutorial/models/video_tutorial_model.dart';
import 'package:system_maua_front/app/modules/help/pages/video-tutorial/repositories/help_video_tutorial_repository_interface.dart';

class HelpVideoTutorialRepository implements IHelpVideoTutorialRepository {
  var listaVideos = [
    VideoTutorialModel(
      titulo: 'Vídeo introdutório',
      descricao: 'Este vídeo contará um pouco sobre nossa nova plataforma',
      url: '',
    ),
    VideoTutorialModel(
      titulo: 'Sistemas de nota',
      descricao: 'Este vídeo sobre como utilizar funções do sistema de notas',
      url: '',
    ),
  ];
  @override
  Future<List<VideoTutorialModel>> getVideos() async {
    return Future.value(listaVideos);
  }
}