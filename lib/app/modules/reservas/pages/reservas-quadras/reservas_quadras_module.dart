import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas-quadras/repositories/reservas_quadras_repository.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas-quadras/reservas_quadras_controller.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas-quadras/reservas_quadras_page.dart';

class ReservasQuadrasModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ReservasQuadrasController(repository: i())),
    Bind.lazySingleton<ReservasQuadrasRepository>(
        (i) => ReservasQuadrasRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => ReservasQuadrasPage()),
  ];
}
