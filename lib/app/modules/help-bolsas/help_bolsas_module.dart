import 'package:flutter_modular/flutter_modular.dart';
import 'help_bolsas_page.dart';

class HelpBolsasModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HelpBolsasPage()),
  ];
}
