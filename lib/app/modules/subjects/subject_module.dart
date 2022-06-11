import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/subjects/repositories/subject_repository.dart';
import 'package:system_maua_front/app/modules/subjects/repositories/subject_repository_interface.dart';
import 'package:system_maua_front/app/modules/subjects/subject_controller.dart';

import 'subject_page.dart';

class SubjectModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SubjectController(i())),
    Bind.lazySingleton<ISubjectRepository>((i) => SubjectRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => SubjectPage(),
    ),
  ];
}
