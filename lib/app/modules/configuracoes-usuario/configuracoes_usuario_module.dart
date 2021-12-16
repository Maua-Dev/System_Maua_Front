import 'package:flutter_modular/flutter_modular.dart';

import 'configuracoes_usuario_page.dart';

class ConfiguracoesUsuarioModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => ConfiguracoesUsuarioPage(
        nomeAluno: args.queryParams['nomeAluno'] as String,
        raAluno: args.queryParams['raAluno'] as String,
        fotoALuno: args.queryParams['fotoALuno'] as String,
      ),
    ),
  ];
}
