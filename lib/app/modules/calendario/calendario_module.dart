import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/calendario/calendario_controller.dart';
import 'package:system_maua_front/app/modules/calendario/repositories/calendario_repository.dart';

import 'calendario_page.dart';

class CalendarioModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CalendarioController(i())),
    Bind.lazySingleton<CalendarRepository>((i) => CalendarRepository())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => CalendarioPage()),
  ];
}
