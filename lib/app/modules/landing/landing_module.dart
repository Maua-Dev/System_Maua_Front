import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/activities/activities_module.dart';
import 'package:system_maua_front/app/modules/calendario/calendario_module.dart';
import 'package:system_maua_front/app/modules/help/help_module.dart';
import 'package:system_maua_front/app/modules/home-aluno/home_student_module.dart';
import 'package:system_maua_front/app/modules/ic/ic_module.dart';
import 'package:system_maua_front/app/modules/landing/landing_page.dart';
import 'package:system_maua_front/app/modules/materias/materias_module.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/mural_divulgacao_module.dart';
import 'package:system_maua_front/app/modules/notas/notas_module.dart';
import 'package:system_maua_front/app/modules/reservas/reservas_module.dart';

class LandingModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, args) => LandingPage(),
        children: [
          ModuleRoute('/home', module: HomeAlunoModule()),
          ModuleRoute('/medias', module: NotasModule()),
          ModuleRoute('/help', module: HelpModule()),
          ModuleRoute('/activities', module: ActivitiesModule()),
          ModuleRoute('/mural', module: MuralDivulgacaoModule()),
          ModuleRoute('/calendario', module: CalendarioModule()),
          ModuleRoute('/materias', module: MateriasModule()),
          ModuleRoute('/ic', module: IcModule()),
          ModuleRoute('/reservas', module: ReservasModule()),
        ]),
  ];
}
