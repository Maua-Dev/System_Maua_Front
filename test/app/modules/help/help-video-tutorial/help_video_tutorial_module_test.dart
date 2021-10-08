import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/help/pages/video-tutorial/help_video_tutorial_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/video-tutorial/help_video_tutorial_module.dart';
import 'package:system_maua_front/app/modules/help/pages/video-tutorial/repositories/help_video_tutorial_repository.dart';

void main() {
  initModule(HelpVideoTutorialModule());

  test('[TEST] - Injeção do HelpVideoTutorialController', () {
    Modular.get<HelpVideoTutorialController>();
  });

  test('[TEST] - Injeção do HelpSoftwaresRepository', () {
    Modular.get<HelpVideoTutorialRepository>();
  });
}
