import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/help_estagio_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/help_estagio_page.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/repositories/help_estagio_repository.dart';

class HelpEstagioModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HelpEstagioController(i())),
    Bind.lazySingleton<HelpEstagioRepository>((i) => HelpEstagioRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_,args) => HelpEstagioPage()),
    
  ];
}