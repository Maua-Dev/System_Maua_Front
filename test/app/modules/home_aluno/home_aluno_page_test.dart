import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:system_maua_front/app/app_module.dart';
import 'package:system_maua_front/app/modules/home-aluno/home_aluno_module.dart';
import 'package:system_maua_front/app/modules/home-aluno/home_aluno_page.dart';
import 'package:system_maua_front/app/modules/home-aluno/repositories/home_aluno_repository_interface.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';
import 'package:system_maua_front/app/shared/models/aluno_model.dart';
import 'package:system_maua_front/app/shared/models/aula_model.dart';

import 'home_aluno_controller_test.mocks.dart';

void main() {
  var mockRepository = MockIHomeAlunoRepository();
  initModules([
    AppModule(),
    HomeAlunoModule()
  ], replaceBinds: [
    Bind.lazySingleton<IHomeAlunoRepository>((i) => mockRepository),
  ]);

  setUpAll(() {
    when(mockRepository.getAluno())
        .thenAnswer((_) async => AlunoModel(nome: 'Ronaldo', ra: '15.01310-3'));
    when(mockRepository.getAula()).thenAnswer((_) async => AulaModel(
        tipoMateriaEnum: TipoMateriaEnum.CALC1,
        local: 'H201',
        horario: '14h',
        duracao: '14 - 15'));
  });

  testWidgets('[TEST] [home aluno page] - find title user',
      (WidgetTester tester) async {
    await mockNetworkImagesFor(
        () => tester.pumpWidget(buildTestableWidget(HomeAlunoPage())));
    await mockNetworkImagesFor(
        () => tester.pumpAndSettle(Duration(seconds: 1)));
    expect(find.byKey(ValueKey('titleUser')), findsOneWidget);
    expect(find.text('15.01310-3'), findsOneWidget);
  });
}
