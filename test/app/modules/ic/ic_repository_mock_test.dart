import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/ic/repositories/ic_repository.dart';

void main() {
  late IcRepository repository;

  setUpAll(() {
    repository = IcRepository();
  });
  test('[TEST] - getDadosTronco', () {
    expect(repository.listaIc.isNotEmpty, true);
  });
}
