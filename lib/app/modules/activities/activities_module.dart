import 'package:flutter_modular/flutter_modular.dart';
// import 'package:system_maua_front/app/modules/activities/activities_page.dart';
import 'package:system_maua_front/app/modules/activities/repositories/activities_repository.dart';
import 'package:system_maua_front/app/modules/activities/repositories/activities_repository_interface.dart';
import 'activities_controller.dart';

class ActivitiesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ActivitiesController(i())),
    Bind.lazySingleton<IActivitiesRepository>((i) => ActivitiesRepository())
  ];

  @override
  final List<ModularRoute> routes = [
    // ChildRoute(Modular.initialRoute, child: (_, args) => ActivitiesPage()),
  ];
}
