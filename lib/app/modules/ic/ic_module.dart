import 'package:flutter_modular/flutter_modular.dart';

import 'ic_page.dart';

class IcModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => IcPage(),
    ),
  ];
}
