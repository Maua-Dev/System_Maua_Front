import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/help-aluno/help_aluno_controller.dart';

void main() {
  late HelpAlunoController store;

  setUpAll(() {
    store = HelpAlunoController();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}
