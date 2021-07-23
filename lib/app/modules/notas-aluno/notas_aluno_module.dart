import 'package:system_maua_front/app/modules/notas-aluno/notas_aluno_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'notas_aluno_page.dart';
import 'repositories/notas_aluno_repository.dart';

class NotasAlunoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => NotasAlunoController(i())),
    Bind.lazySingleton<NotasAlunoRepository>((i) => NotasAlunoRepository())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => NotasAlunoPage()),
  ];
}
