import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/home-aluno/repositories/home_aluno_repository.dart';

void main() {
  late HomeAlunoRepository homeAlunoRepository;

  setUpAll(() {
    homeAlunoRepository = HomeAlunoRepository();
  });
  test('[TEST] - getAluno', () {
    expect(homeAlunoRepository.aluno.ra.isNotEmpty, true);
    expect(homeAlunoRepository.aluno.nome.isNotEmpty, true);
  });

  test('[TEST] - getAula', () {
    expect(homeAlunoRepository.aula.horario.isNotEmpty, true);
    expect(homeAlunoRepository.aula.duracao.isNotEmpty, true);
  });
}
