import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help/pages/help-avisos/help_avisos_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/help-avisos/help_avisos_page.dart';
import 'package:system_maua_front/app/modules/help/pages/help-avisos/repositories/help_avisos_repository.dart';
import 'package:system_maua_front/app/modules/help/pages/help-bolsas/help_bolsas_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/help-bolsas/help_bolsas_page.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/help_intercambio_page.dart';
import 'package:system_maua_front/app/modules/help/pages/help-softwares/help_softwares_page.dart';

import 'help_page.dart';

class HelpModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HelpAvisosController(i())),
    Bind.lazySingleton<HelpAvisosRepository>((i) => HelpAvisosRepository()),
    Bind.lazySingleton((i) => HelpBolsasController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HelpPage()),
    ChildRoute('/avisos', child: (_, args) => HelpAvisosPage()),
    ChildRoute('/bolsas', child: (_, args) => HelpBolsasPage()),
    ChildRoute('/intercambio', child: (_, args) => HelpIntercambioPage()),
    ChildRoute('/softwares', child: (_, args) => HelpSoftwaresPage())
  ];
}
