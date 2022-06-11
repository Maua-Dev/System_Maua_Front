import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/home/repositories/home_repository.dart';

void main() {
  late HomeRepository homeAlunoRepository;

  setUpAll(() {
    homeAlunoRepository = HomeRepository();
  });
  test('[TEST] - getAluno', () {
    expect(homeAlunoRepository.student.ra.isNotEmpty, true);
    expect(homeAlunoRepository.student.name.isNotEmpty, true);
  });

  test('[TEST] - getAula', () {
    expect(homeAlunoRepository.lectures.isNotEmpty, true);
  });
}
