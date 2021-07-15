import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/login/login_controller.dart';

void main() {
  late LoginController store;

  setUpAll(() {
    store = LoginController();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}
