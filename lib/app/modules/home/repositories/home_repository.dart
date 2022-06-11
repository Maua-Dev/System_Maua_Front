import 'package:system_maua_front/app/shared/enumerates/subject_enum.dart';
import 'package:system_maua_front/app/shared/models/student_model.dart';
import 'package:system_maua_front/app/shared/models/classes_model.dart';

import 'home_repository_interface.dart';

class HomeRepository implements IHomeRepository {
  var student = StudentModel(
    name: 'Ronaldinho',
    ra: '15.01310-3',
  );

  var lectures = [
    ClassesModel(
      local: 'H101',
      subjectEnum: SubjectEnum.RESMAT,
      startHour: DateTime.now(),
    ),
    ClassesModel(
      local: 'U14',
      subjectEnum: SubjectEnum.CALC2,
      startHour: DateTime.now(),
    ),
    ClassesModel(
      local: 'U18',
      subjectEnum: SubjectEnum.FT,
      startHour: DateTime.now(),
    ),
  ];

  @override
  Future<StudentModel> getStudent() {
    return Future.value(student);
  }

  @override
  Future<List<ClassesModel>> getClass() async {
    await Future.delayed(Duration(seconds: 1));
    return Future.value(lectures);
  }
}
