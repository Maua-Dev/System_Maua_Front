import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/enumerates/materiais_enum.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/pages/lista_vendas/lista_vendas_materiais_controller.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/pages/lista_vendas/lista_vendas_materiais_page.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/pages/procura_materias/procura_materiais_controller.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/pages/procura_materias/procura_materiais_page.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/repositories/mural_vendas_materiais_repository.dart';

class MuralVendasMateriaisModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ProcuraMateriaisController()),
    Bind.lazySingleton((i) => ListaVendasMateriaisController(
          repository: i(),
          idMaterial: (i.args?.data as MateriaisEnum),
        )),
    Bind.lazySingleton<MuralVendasMateriaisRepository>(
        (i) => MuralVendasMateriaisRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, args) => ProcuraMateriaisPage()),
    ChildRoute('/lista-vendas', child: (_, args) => ListaVendasMateriaisPage()),
  ];
}
