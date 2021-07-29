import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/help-avisos/help_avisos_controller.dart';

void main() {
  late HelpAvisosStore store;

  setUpAll(() {
    store = HelpAvisosStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}
