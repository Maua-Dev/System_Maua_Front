import 'package:system_maua_front/app/modules/notas-aluno/notasAluno_Page.dart';
import 'package:system_maua_front/app/modules/notas-aluno/notas_aluno_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NotasAlunoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => NotasAlunoController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => NotasAlunoPage()),
  ];
}
