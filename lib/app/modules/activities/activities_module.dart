import 'package:flutter_modular/flutter_modular.dart';
import 'activities_store.dart';
import 'activities_page.dart';

class ActivitiesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ActivitiesStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => ActivitiesPage()),
  ];
}
