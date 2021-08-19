import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/medias/repositories/medias_repository.dart';
import 'package:system_maua_front/app/modules/medias/repositories/medias_repository_interface.dart';
import 'medias_controller.dart';
import 'medias_page.dart';

class MediasModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => MediasController(i())),
    Bind.lazySingleton<IMediasRepository>((i) => MediasRepository())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => MediasPage()),
  ];
}