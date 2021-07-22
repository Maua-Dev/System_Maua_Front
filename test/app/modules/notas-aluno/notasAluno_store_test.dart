import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/notas-aluno/notas_aluno_controller.dart';

void main() {
  late NotasAlunoStore store;

  setUpAll(() {
    store = NotasAlunoStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}
