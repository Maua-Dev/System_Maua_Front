import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/medias/repositories/medias/medias_repository.dart';
import 'package:system_maua_front/app/modules/medias/repositories/medias/medias_repository_interface.dart';
import 'package:system_maua_front/app/modules/medias/widgets/filtro_ano/filtro_controller.dart';
import 'package:system_maua_front/app/modules/notas-aluno/notas_aluno_page.dart';
import 'medias_controller.dart';
import 'medias_page.dart';
import 'repositories/filtros/filtros_medias_repository.dart';
import 'repositories/filtros/filtros_medias_repository_interface.dart';

class MediasModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => MediasController(i(), i())),
    Bind.lazySingleton<IMediasRepository>((i) => MediasRepository()),
    Bind.lazySingleton<IFiltroMediasRepository>(
        (i) => FiltroMediasRepository()),
    Bind.lazySingleton((i) => FiltroController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => MediasPage()),
    ChildRoute('/notas', child: (_, args) => NotasAlunoPage()),
  ];
}
