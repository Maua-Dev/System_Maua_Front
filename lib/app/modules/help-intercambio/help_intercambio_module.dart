import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help-intercambio/help_intercambio_page.dart';

class HelpIntercambioModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HelpIntercambioPage())
  ];
}
