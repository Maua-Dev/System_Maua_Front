import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/configuracoes-usuario/configuracoes_usuario_module.dart';
import 'package:system_maua_front/app/modules/home-aluno/repositories/home_student_repository.dart';
import 'home_student_controller.dart';

import 'home_student_page.dart';
import 'repositories/home_student_repository_interface.dart';

class HomeAlunoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeAlunoController(i())),
    Bind.lazySingleton<IHomeStudentRepository>((i) => HomeStudentRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => HomeStudentPage(),
    ),
    ModuleRoute('/configuracoes-usuario', module: ConfiguracoesUsuarioModule())
  ];
}
