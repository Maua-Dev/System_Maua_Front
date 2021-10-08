import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/help/pages/video-tutorial/repositories/help_video_tutorial_repository.dart';

void main() {
  late HelpVideoTutorialRepository helpVideoTutorialRepository;

  setUpAll(() {
    helpVideoTutorialRepository = HelpVideoTutorialRepository();
  });

  test('[TEST] - getVideos', () {
    expect(helpVideoTutorialRepository.listaVideos.isNotEmpty, true);
  });
}
