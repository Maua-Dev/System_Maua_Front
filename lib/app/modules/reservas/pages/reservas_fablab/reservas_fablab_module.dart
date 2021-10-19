import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas_fablab/repositories/reservas_fablab_repository.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas_fablab/reservas_fablab_page.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas_fablab/reservas_fablab_controller.dart';

class ReservasFablabModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ReservasFablabController(repository: i())),
    Bind.lazySingleton<ReservasFablabRepository>(
        (i) => ReservasFablabRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => ReservasFablabPage()),
  ];
}