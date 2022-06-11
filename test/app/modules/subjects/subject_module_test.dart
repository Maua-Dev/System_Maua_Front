import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/subjects/repositories/subject_repository.dart';
import 'package:system_maua_front/app/modules/subjects/subject_controller.dart';
import 'package:system_maua_front/app/modules/subjects/subject_module.dart';

void main() {
  initModule(SubjectModule());

  test('[TEST] - SubjectController Injection', () {
    var subjectController = Modular.get<SubjectController>();
    expect(subjectController.repository, isInstanceOf<SubjectRepository>());
  });

  test('[TEST] - SubjectRepository Injection', () {
    Modular.get<SubjectController>();
  });
}
