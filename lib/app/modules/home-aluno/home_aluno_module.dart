import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/home-aluno/repositories/home_aluno_repository.dart';
import 'home_aluno_controller.dart';

import 'home_aluno_page.dart';
import 'repositories/home_aluno_repository_interface.dart';

class HomeAlunoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeAlunoController(i())),
    Bind.lazySingleton<IHomeAlunoRepository>((i) => HomeAlunoRepository())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HomeAlunoPage()),
  ];
}
