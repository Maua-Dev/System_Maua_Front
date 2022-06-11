import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/subjects/models/subject_model.dart';
import 'package:system_maua_front/app/modules/subjects/repositories/subject_repository_interface.dart';
import 'package:system_maua_front/app/modules/subjects/subject_controller.dart';
import 'package:system_maua_front/app/shared/enumerates/subject_enum.dart';
import 'subject_controller_test.mocks.dart';

@GenerateMocks([ISubjectRepository])
void main() {
  ISubjectRepository repository = MockISubjectRepository();
  late SubjectController materiasController;
  var mockSubjects = [
    SubjectModel(name: SubjectEnum.ACADEMIATALENTOS, progress: 0.9),
    SubjectModel(name: SubjectEnum.CALC1, progress: 0.4),
  ];

  setUpAll(() {
    when(repository.getsubject()).thenAnswer((_) async => mockSubjects);
    materiasController = SubjectController(repository);
  });

  test('[TEST] - getAluno', () async {
    await materiasController.getSubjects();
    expect(materiasController.subject, mockSubjects);
  });
}
