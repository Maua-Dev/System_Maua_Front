import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/reservas/pages/reservas-quadras/reservas_quadras_module.dart';
import 'package:system_maua_front/app/modules/reservas/reservas_page.dart';

class ReservasModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => ReservasPage()),
    ModuleRoute('/quadra', module: ReservasQuadrasModule()),
  ];
}
