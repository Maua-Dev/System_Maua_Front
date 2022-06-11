import 'package:system_maua_front/app/modules/grades/enumerates/grades_enum.dart';
import 'package:system_maua_front/app/modules/grades/models/average_model.dart';
import 'package:system_maua_front/app/modules/grades/models/averages_model.dart';
import 'package:system_maua_front/app/modules/grades/models/grades_model.dart';
import 'package:system_maua_front/app/modules/grades/repositories/average_repository_interface.dart';

class AverageRepository implements IAverageRepository {
  AverageModel gradesMock = AverageModel(
    graduationName: 'Engenharia de Computação',
    year: 2022,
    averages: [
      AveragesModel(
        subject: 'Cálculo Diferencial e Integral II',
        parcialAverage: 8.5,
        currentNote: 8.5,
        globalAverage: 8.8,
        tests: [GradesModel(grade: GradesEnum.P1, value: 8.5, heft: 2), GradesModel(grade: GradesEnum.P2, value: 7.5, heft: 1)],
        tasks: [GradesModel(grade: GradesEnum.T1, value: 9.5, heft: 3.0), GradesModel(grade: GradesEnum.T2, value: 9.5, heft: 3.0), GradesModel(grade: GradesEnum.T3, value: 9.5, heft: 3.0), GradesModel(grade: GradesEnum.T4, value: 9.5, heft: 3.0)],
      ),
      AveragesModel(
        subject: 'Cálculo Diferencial e Integral II',
        parcialAverage: 8.5,
        currentNote: 8.5,
        globalAverage: 8.8,
        tests: [GradesModel(grade: GradesEnum.P1, value: 8.5)],
        tasks: [GradesModel(grade: GradesEnum.T1, value: 9.5, heft: 3.0)],
      ),
      AveragesModel(
        subject: 'Cálculo Diferencial e Integral II',
        parcialAverage: 8.5,
        currentNote: 8.5,
        globalAverage: 8.8,
        tests: [GradesModel(grade: GradesEnum.P1, value: 8.5)],
        tasks: [GradesModel(grade: GradesEnum.T1, value: 9.5, heft: 3.0)],
      ),
      AveragesModel(
        subject: 'Cálculo Diferencial e Integral II',
        parcialAverage: 8.5,
        currentNote: 8.5,
        globalAverage: 8.8,
        tests: [GradesModel(grade: GradesEnum.P1, value: 8.5)],
        tasks: [GradesModel(grade: GradesEnum.T1, value: 9.5, heft: 3.0)],
      ),
      AveragesModel(
        subject: 'Cálculo Diferencial e Integral II',
        parcialAverage: 8.5,
        currentNote: 8.5,
        globalAverage: 8.8,
        tests: [GradesModel(grade: GradesEnum.P1, value: 8.5)],
        tasks: [GradesModel(grade: GradesEnum.T1, value: 9.5, heft: 3.0)],
      ),
      AveragesModel(
        subject: 'Cálculo Diferencial e Integral II',
        parcialAverage: 8.5,
        currentNote: 8.5,
        globalAverage: 8.8,
        tests: [GradesModel(grade: GradesEnum.P1, value: 8.5)],
        tasks: [GradesModel(grade: GradesEnum.T1, value: 9.5, heft: 3.0)],
      ),
      AveragesModel(
        subject: 'Cálculo Diferencial e Integral II',
        parcialAverage: 8.5,
        currentNote: 8.5,
        globalAverage: 8.8,
        tests: [GradesModel(grade: GradesEnum.P1, value: 8.5)],
        tasks: [GradesModel(grade: GradesEnum.T1, value: 9.5, heft: 3.0)],
      ),
    ],
  );

  @override
  Future<AverageModel> getAverage() {
    return Future.value(gradesMock);
  }
}
