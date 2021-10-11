import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/help_intercambio_page.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/pages/faq/controller/faq_intercambio_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/pages/faq/page/intercambio_faq_page.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/pages/faq/repository/faq_repository.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/pages/faq/repository/faq_repository_interface.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/pages/oportunidades_abertas/repository/oportunidade_repository_interface.dart';
import 'pages/oportunidades_abertas/controller/oportunidade_controller.dart';
import 'pages/oportunidades_abertas/page/intercambio_oportunidades_page.dart';
import 'pages/oportunidades_abertas/repository/oportunidade_repository.dart';

class HelpIntercambioModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton<IOportunidadeRepository>(
        (i) => OportunidadeRepository()),
    Bind.lazySingleton((i) => OportunidadeController(i())),
    Bind.lazySingleton<IFaqIntercambioRepository>(
        (i) => FaqIntercambioRepository()),
    Bind.lazySingleton((i) => FaqIntercambioController(i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HelpIntercambioPage()),
    ChildRoute('/oportunidades', child: (_, args) => OportunidadePage()),
    ChildRoute('/faq', child: (_, args) => FaqIntercambioPage()),
  ];
}
