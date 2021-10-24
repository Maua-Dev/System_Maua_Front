import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/notas/pages/atividades/atividades_controller.dart';
import 'package:system_maua_front/app/modules/notas/pages/atividades/models/atividade_model.dart';
import 'package:system_maua_front/app/modules/notas/pages/atividades/repositories/atividades_repository_interface.dart';

import 'atividades_controller_test.mocks.dart';

@GenerateMocks([IAtividadesRepository])
void main() {
  IAtividadesRepository repository = MockIAtividadesRepository();
  late AtividadesController atividadesController;

  var atividades = [
    AtividadeModel(
      nomeAtividade: 'T4 - Teorema de Green',
      entregue: true,
      nota: 9,
    ),
    AtividadeModel(
      nomeAtividade: 'T4 - Teorema de Green',
      entregue: false,
      nota: 0,
    ),
    AtividadeModel(
      nomeAtividade: 'T4 - Teorema de Green',
      entregue: true,
      nota: 9,
    ),
    AtividadeModel(
      nomeAtividade:
          'T4 - Fenômenos do transporte - escoamento externo e interno',
      entregue: true,
      nota: 9,
    ),
    AtividadeModel(
      nomeAtividade:
          'T4 - Fenômenos do transporte - escoamento externo e interno',
      entregue: true,
      nota: 9,
    ),
    AtividadeModel(
      nomeAtividade:
          'T4 - Fenômenos do transporte - escoamento externo e interno',
      entregue: true,
      nota: 9,
    ),
    AtividadeModel(
      nomeAtividade:
          'T4 - Fenômenos do transporte - escoamento externo e interno',
      entregue: true,
      nota: 4,
    ),
    AtividadeModel(
      nomeAtividade:
          'T4 - Fenômenos do transporte - escoamento externo e interno',
      entregue: true,
      nota: 9,
    ),
  ];

  setUpAll(() {
    when(repository.getAtividades()).thenAnswer((_) async => atividades);
    atividadesController = AtividadesController(repository);
  });

  test('[TEST] - getAtividades', () async {
    await atividadesController.getAtividades();
    expect(atividadesController.atividades, atividades);
  });
}
