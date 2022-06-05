import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/home-aluno/home_student_controller.dart';
import 'package:system_maua_front/app/modules/home-aluno/repositories/home_student_repository_interface.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';
import 'package:system_maua_front/app/shared/models/classes_model.dart';
import 'package:system_maua_front/app/shared/models/student_model.dart';

import 'home_student_controller_test.mocks.dart';

@GenerateMocks([IHomeStudentRepository])
void main() {
  IHomeStudentRepository repository = MockIHomeStudentRepository();
  late HomeAlunoController homeAlunoController;
  var alunoTeste = StudentModel(name: 'Gabriel', ra: '17.00163-3');
  var aulaTeste = [ClassesModel(
      subjectEnum: SubjectEnum.FT,
      startHour: DateTime.now(),
      local: 'H201')
      ];

  setUpAll(() {
    when(repository.getStudent()).thenAnswer((_) async => alunoTeste);
    when(repository.getClass()).thenAnswer((_) async => aulaTeste);
    homeAlunoController = HomeAlunoController(repository);
  });

  test('[TEST] - getAluno', () async {
    await homeAlunoController.getStudent();
    expect(homeAlunoController.student, alunoTeste);
  });

  test('[TEST] - getAula', () async {
    await homeAlunoController.getClass();
    expect(homeAlunoController.classesOfDay, aulaTeste);
  });
}
