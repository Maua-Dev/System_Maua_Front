import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/materias-apresentacao/materias_apresentacao_controller.dart';
import 'package:system_maua_front/app/modules/materias-apresentacao/materias_apresentacao_page.dart';
import 'package:system_maua_front/app/modules/materias-apresentacao/repositories/materias_apresentacao_repository.dart';

class MateriasApresentacaoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => MateriasApresentacaoController(i())),
    Bind.lazySingleton<MateriasApresentacaoRepository>(
        (i) => MateriasApresentacaoRepository())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, args) => MateriasApresentacaoPage()),
  ];
}
