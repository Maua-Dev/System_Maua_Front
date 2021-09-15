import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/modules/venda_materiais_module.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_estagio/mural_estagios_controller.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_estagio/mural_estagios_page.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_estagio/repositories/mural_estagios_repository.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/pages/procura_materias/procura_materiais_controller.dart';
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
    Bind.lazySingleton((i) => MuralEstagiosController(i())),
    Bind.lazySingleton<MuralEstagiosRepository>(
        (i) => MuralEstagiosRepository()),
    Bind.lazySingleton((i) => ProcuraMateriaisController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => MuralDivulgacaoPage()),
    ChildRoute('/equipes', child: (_, args) => MuralEquipesPage()),
    ChildRoute('/estagios', child: (_, args) => MuralEstagiosPage()),
    ModuleRoute('/vendas', module: VendaMateriaisModule()),
  ];
}
