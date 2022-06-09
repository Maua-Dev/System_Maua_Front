import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/home-aluno/repositories/home_student_repository.dart';

void main() {
  late HomeStudentRepository homeAlunoRepository;

  setUpAll(() {
    homeAlunoRepository = HomeStudentRepository();
  });
  test('[TEST] - getAluno', () {
    expect(homeAlunoRepository.student.ra.isNotEmpty, true);
    expect(homeAlunoRepository.student.name.isNotEmpty, true);
  });

  test('[TEST] - getAula', () {
    expect(homeAlunoRepository.lectures.isNotEmpty, true);
  });
}
