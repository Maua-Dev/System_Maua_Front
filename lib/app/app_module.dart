import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home-aluno/home_aluno_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/home', module: HomeAlunoModule()),
  ];
}
