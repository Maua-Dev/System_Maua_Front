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
          // nomeAluno: args.data as String,
          // raAluno: args.data as String,
          // fotoALuno: args.data as String,
          ),
    ),
  ];
}
