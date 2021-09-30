import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/help/pages/video-tutorial/help_video_tutorial_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/video-tutorial/models/video_tutorial_model.dart';
import 'package:system_maua_front/app/modules/help/pages/video-tutorial/repositories/help_video_tutorial_repository_interface.dart';

import 'help_video_tutorial_controller_test.mocks.dart';

@GenerateMocks([IHelpVideoTutorialRepository])
void main() {
  IHelpVideoTutorialRepository repository = MockIHelpVideoTutorialRepository();
  late HelpVideoTutorialController controller;
  var videoTeste = [
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
  setUpAll(() {
    when(repository.getVideos()).thenAnswer((_) async => videoTeste);
    controller = HelpVideoTutorialController(repository: repository);
  });

  test('[TEST] - getVideos', () async {
    await controller.getVideos();
    expect(controller.listaVideos.isNotEmpty, true);
  });
}
