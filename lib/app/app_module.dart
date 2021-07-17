import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_aluno_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeAlunoModule()),
  ];
}
