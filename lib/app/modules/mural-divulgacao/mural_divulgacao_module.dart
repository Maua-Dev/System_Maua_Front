import 'package:flutter_modular/flutter_modular.dart';

import 'mural_divulgacao_controller.dart';
import 'mural_divulgacao_page.dart';

class MuralDivulgacaoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => MuralDivulgacaoController(i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => MuralDivulgacaoPage()),
  ];
}
