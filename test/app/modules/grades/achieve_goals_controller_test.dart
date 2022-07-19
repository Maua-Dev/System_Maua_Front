import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/grades/controllers/achieve_goals_controller.dart';
import 'package:system_maua_front/app/modules/grades/enumerates/grades_enum.dart';
import 'package:system_maua_front/app/modules/grades/models/average_model.dart';
import 'package:system_maua_front/app/modules/grades/models/averages_model.dart';
import 'package:system_maua_front/app/modules/grades/models/grades_model.dart';
import 'package:system_maua_front/app/modules/grades/repositories/average_repository_interface.dart';

import 'achieve_goals_controller_test.mocks.dart';

@GenerateMocks([IAverageRepository])
void main() {
  IAverageRepository repository = MockIAverageRepository();
  late AchieveGoalsController achieveGoalsController;
  var mockGrades = AveragesModel(
    subject: 'Resistência dos Materiais',
    parcialAverage: 5.5,
    currentNote: 5.5,
    globalAverage: 8.8,
    testHint: 0.6,
    taskHint: 0.4,
    tests: [
      GradesModel(grade: GradesEnum.P1, value: 3.5, heft: 2),
      GradesModel(grade: GradesEnum.P2, value: null, heft: 3)
    ],
    tasks: [
      GradesModel(grade: GradesEnum.T1, value: 4.0, heft: 1),
      GradesModel(grade: GradesEnum.T2, value: 10, heft: 1)
    ],
  );

  var gradesMock = AverageModel(
    graduationName: 'Engenharia de Computação',
    year: 2022,
    averages: [
      AveragesModel(
        subject: 'Cálculo Diferencial e Integral II',
        parcialAverage: 7.5,
        currentNote: 8.5,
        globalAverage: 8.8,
        testHint: 0.6,
        taskHint: 0.4,
        tests: [
          GradesModel(grade: GradesEnum.P1, value: 8.0, heft: 2),
          GradesModel(grade: GradesEnum.P2, value: 7.5, heft: 1),
          GradesModel(grade: GradesEnum.P3, value: 7, heft: 2),
          GradesModel(grade: GradesEnum.P4, value: null, heft: 1)
        ],
        tasks: [
          GradesModel(grade: GradesEnum.T1, value: 9.0, heft: 1.0),
          GradesModel(grade: GradesEnum.T2, value: 8.5, heft: 3.0),
          GradesModel(grade: GradesEnum.T3, value: null, heft: 2.0),
          GradesModel(grade: GradesEnum.T4, value: 9.5, heft: 3.0)
        ],
      ),
      AveragesModel(
        subject: 'Resistência dos Materiais',
        parcialAverage: 5.5,
        currentNote: 5.5,
        globalAverage: 8.8,
        testHint: 0.6,
        taskHint: 0.4,
        tests: [
          GradesModel(grade: GradesEnum.P1, value: 5.5, heft: 1),
          GradesModel(grade: GradesEnum.P2, value: 5.5, heft: 2)
        ],
        tasks: [
          GradesModel(grade: GradesEnum.T1, value: 4.5, heft: 1.0),
          GradesModel(grade: GradesEnum.T2, value: 6.5, heft: 2.0)
        ],
      ),
      AveragesModel(
        subject: 'Cálculo Diferencial e Integral II',
        parcialAverage: 8.5,
        currentNote: 8.5,
        globalAverage: 8.8,
        testHint: 0.6,
        taskHint: 0.4,
        tests: [GradesModel(grade: GradesEnum.P1, value: 8.5)],
        tasks: [GradesModel(grade: GradesEnum.T1, value: 9.5, heft: 3.0)],
      ),
      AveragesModel(
        subject: 'Cálculo Diferencial e Integral II',
        parcialAverage: 8.5,
        currentNote: 8.5,
        globalAverage: 8.8,
        testHint: 0.6,
        taskHint: 0.4,
        tests: [GradesModel(grade: GradesEnum.P1, value: 8.5)],
        tasks: [GradesModel(grade: GradesEnum.T1, value: 9.5, heft: 3.0)],
      ),
      AveragesModel(
        subject: 'Cálculo Diferencial e Integral II',
        parcialAverage: 8.5,
        currentNote: 8.5,
        globalAverage: 8.8,
        testHint: 0.6,
        taskHint: 0.4,
        tests: [GradesModel(grade: GradesEnum.P1, value: 8.5)],
        tasks: [GradesModel(grade: GradesEnum.T1, value: 9.5, heft: 3.0)],
      ),
      AveragesModel(
        subject: 'Cálculo Diferencial e Integral II',
        parcialAverage: 8.5,
        currentNote: 8.5,
        globalAverage: 8.8,
        testHint: 0.6,
        taskHint: 0.4,
        tests: [GradesModel(grade: GradesEnum.P1, value: 8.5)],
        tasks: [GradesModel(grade: GradesEnum.T1, value: 9.5, heft: 3.0)],
      ),
      AveragesModel(
        subject: 'Cálculo Diferencial e Integral II',
        parcialAverage: 8.5,
        currentNote: 8.5,
        globalAverage: 8.8,
        testHint: 0.6,
        taskHint: 0.4,
        tests: [GradesModel(grade: GradesEnum.P1, value: 8.5)],
        tasks: [GradesModel(grade: GradesEnum.T1, value: 9.5, heft: 3.0)],
      ),
    ],
  );

  setUpAll(() {
    when(repository.getAverage()).thenAnswer((_) async => gradesMock);
    achieveGoalsController = AchieveGoalsController(mockGrades);
  });

  test('[TEST] - calculateAchieveGoals', () async {
    var achieveGoal =
        await achieveGoalsController.calculateAchieveGoals(mockGrades);
    expect(achieveGoal, 6.555555555555556);
  });
}
