import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/venda_materiais/pages/procura_materias/procura_materiais_page.dart';

class VendaMateriaisModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, args) => ProcuraMateriaisPage()),
  ];
}
