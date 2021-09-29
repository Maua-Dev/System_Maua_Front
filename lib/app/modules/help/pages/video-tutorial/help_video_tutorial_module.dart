import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help/pages/video-tutorial/help_video_tutorial_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/video-tutorial/help_video_tutorial_page.dart';
import 'package:system_maua_front/app/modules/help/pages/video-tutorial/repositories/help_video_tutorial_repository.dart';

class HelpVideoTutorialModule extends Module{
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HelpVideoTutorialController(repository: i())),
    Bind.lazySingleton<HelpVideoTutorialRepository>((i) => HelpVideoTutorialRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HelpVideoTutorialPage()),
  ];
}