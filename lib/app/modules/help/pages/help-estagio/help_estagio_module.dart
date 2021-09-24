import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/help_estagio_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/help_estagio_page.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/page/guia-de-estagio/guia_de_estagio_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/page/guia-de-estagio/guia_de_estagio_page.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/page/guia-de-estagio/repositories/guia_de_estagio_repository.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/repositories/help_estagio_repository.dart';

class HelpEstagioModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HelpEstagioController(i())),
    Bind.lazySingleton<HelpEstagioRepository>((i) => HelpEstagioRepository()),
    Bind.lazySingleton((i) => GuiaEstagioController(i())),
    Bind.lazySingleton<GuiaEstagioRepository>((i) => GuiaEstagioRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_,args) => HelpEstagioPage()),
    ChildRoute('/guiaestagio', child: (_, args) => GuiaEstagioPage())
    
  ];
}