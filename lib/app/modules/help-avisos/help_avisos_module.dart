import 'package:system_maua_front/app/modules/help-avisos/help_avisos_page.dart';
import 'package:system_maua_front/app/modules/help-avisos/help_avisos_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help-avisos/repositories/help_avisos_repository.dart';

class HelpAvisosModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HelpAvisosController(i())),
    Bind.lazySingleton<HelpAvisosRepository>((i) => HelpAvisosRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HelpAvisosPage()),
  ];
}
