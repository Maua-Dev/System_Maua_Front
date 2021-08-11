import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help-aluno/help_aluno_module.dart';
import 'package:system_maua_front/app/modules/help-avisos/help_avisos_module.dart';
import 'package:system_maua_front/app/modules/activities/activities_module.dart';
import 'package:system_maua_front/app/modules/calendario/calendario_module.dart';
import 'package:system_maua_front/app/modules/home-aluno/home_aluno_module.dart';
import 'package:system_maua_front/app/modules/landing/landing_page.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/mural_divulgacao_module.dart';
import 'package:system_maua_front/app/modules/notas-aluno/notas_aluno_module.dart';

class LandingModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, args) => LandingPage(),
        children: [
          ModuleRoute('/notas', module: NotasAlunoModule()),
          ModuleRoute('/home', module: HomeAlunoModule()),
          ModuleRoute('/help', module: HelpAlunoModule()),
          ModuleRoute('/avisos', module: HelpAvisosModule()),
          ModuleRoute('/activities', module: ActivitiesModule()),
          ModuleRoute('/mural', module: MuralDivulgacaoModule()),
          ModuleRoute('/calendario', module: CalendarioModule())
        ]),
  ];
}
