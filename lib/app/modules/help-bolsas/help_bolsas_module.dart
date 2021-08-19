import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help-bolsas/help_bolsas_controller.dart';
import 'help_bolsas_page.dart';

class HelpBolsasModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HelpBolsasController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HelpBolsasPage()),
  ];
}
