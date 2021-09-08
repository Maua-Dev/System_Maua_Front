import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/mural_vendas_materiais_page.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/repositories/mural_divulgacao_repository.dart';

import 'mural_divulgacao_controller.dart';
import 'mural_divulgacao_page.dart';
import 'pages/mural_equipes/mural_equipes_controller.dart';
import 'pages/mural_equipes/mural_equipes_page.dart';
import 'pages/mural_equipes/repositories/mural_equipes_repository.dart';

class MuralDivulgacaoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => MuralDivulgacaoController(i())),
    Bind.lazySingleton<MuralDivulgacaoRepository>(
        (i) => MuralDivulgacaoRepository()),
    Bind.lazySingleton((i) => MuralEquipesController(i())),
    Bind.lazySingleton<MuralEquipesRepository>((i) => MuralEquipesRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => MuralDivulgacaoPage()),
    ChildRoute('/equipes', child: (_, args) => MuralEquipesPage()),
    ChildRoute('vendas', child: (_, args)=> MuralVendasMateriaisPage()),
  ];
}
