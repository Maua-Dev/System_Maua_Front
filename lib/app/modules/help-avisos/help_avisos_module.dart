import 'package:system_maua_front/app/modules/help-avisos/help_avisos_page.dart';
import 'package:system_maua_front/app/modules/help-avisos/help_avisos_page.dart';
import 'package:system_maua_front/app/modules/help-avisos/help_avisos_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HelpAvisosModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HelpAvisosController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => HelpAvisosPage()),
  ];
}
