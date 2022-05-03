import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/materias/external/materias_datasource_impl.dart';
import 'package:system_maua_front/app/modules/materias/materias_controller.dart';
import 'package:system_maua_front/app/modules/materias/repositories/materias_repository.dart';
import 'package:system_maua_front/app/modules/materias/repositories/materias_repository_interface.dart';

import 'external/materias_datasource_interface.dart';
import 'materias_page.dart';

class MateriasModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => MateriasController(i())),
    Bind.lazySingleton<MateriasDatasourceInterface>(
        (i) => MateriasDatasourceImpl(dio: i())),
    Bind.lazySingleton<IMateriasRepository>(
        (i) => MateriasRepository(datasource: i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => MateriasPage(),
    ),
  ];
}
