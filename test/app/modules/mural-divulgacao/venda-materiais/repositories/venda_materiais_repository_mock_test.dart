import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/repositories/mural_vendas_materiais_repository.dart';

void main() {
  late MuralVendasMateriaisRepository repository;

  setUpAll(() {
    repository = MuralVendasMateriaisRepository();
  });

  test('[TEST] - getVendas', () {
    expect(repository.listaVendas.isNotEmpty, true);
  });
}
