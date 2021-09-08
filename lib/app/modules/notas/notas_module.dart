import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/medias_controller.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/medias_page.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/repositories/filtros/filtros_medias_repository.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/repositories/filtros/filtros_medias_repository_interface.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/repositories/medias/medias_repository.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/repositories/medias/medias_repository_interface.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/widgets/filtro_ano/filtro_controller.dart';
import 'package:system_maua_front/app/modules/notas/pages/notas-aluno/notas_aluno_controller.dart';
import 'package:system_maua_front/app/modules/notas/pages/notas-aluno/notas_aluno_page.dart';
import 'package:system_maua_front/app/modules/notas/pages/notas-aluno/repositories/notas_aluno_repository.dart';

class NotasModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => MediasController(i(), i())),
    Bind.lazySingleton<IMediasRepository>((i) => MediasRepository()),
    Bind.lazySingleton<IFiltroMediasRepository>(
        (i) => FiltroMediasRepository()),
    Bind.lazySingleton((i) => FiltroController()),
    Bind.lazySingleton((i) => NotasAlunoController(i())),
    Bind.lazySingleton<NotasAlunoRepository>((i) => NotasAlunoRepository())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => MediasPage()),
    ChildRoute('/notas', child: (_, args) => NotasAlunoPage()),
  ];
}