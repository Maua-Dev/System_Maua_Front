import 'package:system_maua_front/app/modules/help-aluno/help_aluno_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HelpAlunoModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HelpAlunoPage())
  ];
}
