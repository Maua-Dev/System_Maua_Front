import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/pages/oportunidades_abertas/controller/oportunidade_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/pages/oportunidades_abertas/models/universidade_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/pages/oportunidades_abertas/repository/i_oportunidade_repository.dart';

import 'oportunidades_abertas_controller_test.mocks.dart';

@GenerateMocks([IOportunidadeRepository])
void main() {
  IOportunidadeRepository repository = MockIOportunidadeRepository();
  late OportunidadeController controller;
  var universidadeTeste = [
    UniversidadeModel(nome: 'TU Braunshweig - Alemanha', descricao: 'descricao')
  ];
  setUpAll(() {
    when(repository.getUniversidade())
        .thenAnswer((_) async => universidadeTeste);
    controller = OportunidadeController(repository);
  });

  test('[TEST] - SetUniversidadeAction', () {
    controller.setUniversidadeAction();
    expect(controller.universidadeAction.isNotEmpty, true);
  });

  test('[TEST] - TrocaOpen', () {
    controller.trocaOpen(0);
    expect(controller.universidadeAction[0].isOpen, true);
  });

  test('[TEST] - getListRepository', () async {
    await controller.getListRepository();
    expect(controller.listaUniversidade.isNotEmpty, true);
  });
}
