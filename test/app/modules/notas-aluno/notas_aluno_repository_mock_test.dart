import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/notas-aluno/repositories/notas_aluno_repository.dart';

void main() {
  late NotasAlunoRepository notasAlunoRepository;

  setUpAll(() {
    notasAlunoRepository = NotasAlunoRepository();
  });

  test('[TEST] - getMateria', () {
    expect(notasAlunoRepository.materia.provas!.isNotEmpty, true);
    expect(notasAlunoRepository.materia.trabalhos!.isNotEmpty, true);
  });
}
