import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help/pages/video-tutorial/help_video_tutorial_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/video-tutorial/help_video_tutorial_page.dart';
import 'package:system_maua_front/app/modules/help/pages/video-tutorial/page/video-especifico/repositories/video_especifico_repository.dart';
import 'package:system_maua_front/app/modules/help/pages/video-tutorial/page/video-especifico/video_especifico_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/video-tutorial/page/video-especifico/video_especifico_page.dart';
import 'package:system_maua_front/app/modules/help/pages/video-tutorial/repositories/help_video_tutorial_repository.dart';

class HelpVideoTutorialModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HelpVideoTutorialController(repository: i())),
    Bind.lazySingleton<HelpVideoTutorialRepository>(
        (i) => HelpVideoTutorialRepository()),
    Bind.lazySingleton((i) => VideoEspecificoController()),
    Bind.lazySingleton<VideoEspecificoRepository>((i) => VideoEspecificoRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, args) => HelpVideoTutorialPage()),
    ChildRoute('/video-especifico', child: (_, args) => VideoEspecificoPage()),
  ];
}
