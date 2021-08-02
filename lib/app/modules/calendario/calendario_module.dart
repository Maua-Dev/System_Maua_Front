import 'package:flutter_modular/flutter_modular.dart';

import 'calendario_page.dart';

class CalendarioModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => CalendarioPage()),
  ];
}
