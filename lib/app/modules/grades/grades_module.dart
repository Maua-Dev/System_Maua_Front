import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/grades/controllers/achieve_goals_controller.dart';
import 'package:system_maua_front/app/modules/grades/controllers/list_grades_controller.dart';
import 'package:system_maua_front/app/modules/grades/controllers/navigator_controller.dart';
import 'package:system_maua_front/app/modules/grades/models/averages_model.dart';
import 'package:system_maua_front/app/modules/grades/pages/list_grades_page.dart';
import 'package:system_maua_front/app/modules/grades/repositories/average_repository.dart';
import 'package:system_maua_front/app/modules/grades/repositories/average_repository_interface.dart';
import 'package:system_maua_front/app/modules/grades/ui/achieve-goals/achieve_goals_page.dart';

class GradesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ListGradesController(i())),
    Bind.lazySingleton<IAverageRepository>((i) => AverageRepository()),
    Bind.lazySingleton(
        (i) => AchieveGoalsController(i.args!.data as AveragesModel)),
    Bind.lazySingleton((i) => NavigatorController())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => ListGradesPage()),
    ChildRoute('/achieve-goals',
        child: (_, args) => AchieveGoalsPage(
              subjectName: args.data,
            ))
  ];
}
