import 'package:flutter_modular/flutter_modular.dart';

import 'help_bolsas_controller.dart';
import 'help_bolsas_page.dart';

class BolsasModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => BolsasController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => BolsasPage()),
  ];
}
