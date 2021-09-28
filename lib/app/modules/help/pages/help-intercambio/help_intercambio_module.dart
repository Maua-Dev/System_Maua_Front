import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/help_intercambio_page.dart';
import 'pages/oportunidades_abertas/controller/oportunidade_controller.dart';
import 'pages/oportunidades_abertas/page/intercambio_oportunidades_page.dart';
import 'pages/oportunidades_abertas/repository/oportunidade_repository.dart';

class HelpIntercambioModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => OportunidadeRepository()),
    Bind.lazySingleton((i) => OportunidadeController(i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HelpIntercambioPage()),
    ChildRoute('/oportunidades', child: (_, args) => OportunidadePage()),
  ];
}
