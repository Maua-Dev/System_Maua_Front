import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/calendario/calendario_module.dart';
import 'package:system_maua_front/app/modules/grades/grades_module.dart';
import 'package:system_maua_front/app/modules/landing/landing_page.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/mural_divulgacao_module.dart';
import '../home/home_module.dart';
import '../subjects/subject_module.dart';

class LandingModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, args) => LandingPage(),
        children: [
          ModuleRoute('/home', module: HomeModule()),
          ModuleRoute('/medias', module: GradesModule()),
          ModuleRoute('/mural', module: MuralDivulgacaoModule()),
          ModuleRoute('/calendario', module: CalendarioModule()),
          ModuleRoute('/subject', module: SubjectModule()),
        ]),
  ];
}
