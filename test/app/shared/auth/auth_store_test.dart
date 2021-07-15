import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/shared/auth/auth_controller.dart';

void main() {
  late AuthController store;

  setUpAll(() {
    store = AuthController();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}
