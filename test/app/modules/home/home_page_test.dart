import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/app_module.dart';
import 'package:system_maua_front/app/modules/home/home_module.dart';
import 'package:system_maua_front/app/modules/home/repositories/home_repository_interface.dart';
import 'package:system_maua_front/app/shared/enumerates/subject_enum.dart';
import 'package:system_maua_front/app/shared/models/classes_model.dart';
import 'package:system_maua_front/app/shared/models/student_model.dart';

import 'home_controller_test.mocks.dart';

void main() {
  var mockRepository = MockIHomeRepository();
  initModules([
    AppModule(),
    HomeModule()
  ], replaceBinds: [
    Bind.lazySingleton<IHomeRepository>((i) => mockRepository),
  ]);

  setUpAll(() {
    when(mockRepository.getUser()).thenAnswer(
        (_) async => StudentModel(name: 'Ronaldo', ra: '15.01310-3'));
    when(mockRepository.getClass()).thenAnswer((_) async => [
          ClassesModel(
            subjectEnum: SubjectEnum.CALC1,
            local: 'H201',
            startHour: DateTime.now(),
          )
        ]);
  });

  // testWidgets('[TEST] [home aluno page] - find title user',
  //     (WidgetTester tester) async {
  //   await mockNetworkImagesFor(
  //       () => tester.pumpWidget(buildTestableWidget(HomeAlunoPage())));
  //   await mockNetworkImagesFor(
  //       () => tester.pumpAndSettle(Duration(seconds: 1)));
  //   expect(find.byKey(ValueKey('titleUser')), findsOneWidget);
  //   expect(find.text('15.01310-3'), findsOneWidget);
  // });
}
