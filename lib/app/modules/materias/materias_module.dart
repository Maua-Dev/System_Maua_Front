import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/materias-apresentacao/materias_apresentacao_controller.dart';
import 'package:system_maua_front/app/modules/materias-apresentacao/materias_apresentacao_page.dart';
import 'package:system_maua_front/app/modules/materias/materias_controller.dart';
import 'package:system_maua_front/app/modules/materias/repositories/materias_repository.dart';
import 'package:system_maua_front/app/modules/materias/repositories/materias_repository_interface.dart';

import 'materias_page.dart';

class MateriasModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => MateriasController(i())),
    Bind.lazySingleton<IMateriasRepository>((i) => MateriasRepository()),
    Bind.lazySingleton((i) => MateriasApresentacaoController(
        repository: i(), codigoMateria: i.args?.data as String)),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => MateriasPage(),
    ),
    ChildRoute(
      '/apresentacao',
      child: (_, args) => MateriasApresentacaoPage(),
    ),
  ];
}
