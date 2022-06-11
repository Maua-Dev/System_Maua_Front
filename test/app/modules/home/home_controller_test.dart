import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/home/home_controller.dart';
import 'package:system_maua_front/app/modules/home/repositories/home_repository_interface.dart';
import 'package:system_maua_front/app/shared/enumerates/subject_enum.dart';
import 'package:system_maua_front/app/shared/models/classes_model.dart';
import 'package:system_maua_front/app/shared/models/student_model.dart';

import 'home_controller_test.mocks.dart';

@GenerateMocks([IHomeRepository])
void main() {
  IHomeRepository repository = MockIHomeRepository();
  late HomeController homeController;
  var userMock = StudentModel(name: 'Gabriel', ra: '17.00163-3');
  var classMock = [
    ClassesModel(
        subjectEnum: SubjectEnum.FT, startHour: DateTime.now(), local: 'H201')
  ];

  setUpAll(() {
    when(repository.getUser()).thenAnswer((_) async => userMock);
    when(repository.getClass()).thenAnswer((_) async => classMock);
    homeController = HomeController(repository);
  });

  test('[TEST] - getUser', () async {
    await homeController.getUser();
    expect(homeController.student, userMock);
  });

  test('[TEST] - setIsLoading', () {
    homeController.setIsLoading(true);
    expect(homeController.isLoading, true);
  });

  test('[TEST] - getClass', () async {
    await homeController.getClass();
    expect(homeController.classesOfDay, classMock);
  });
}
