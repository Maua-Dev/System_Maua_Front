import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';
import 'package:system_maua_front/app/shared/models/student_model.dart';
import 'package:system_maua_front/app/shared/models/classes_model.dart';

import 'home_student_repository_interface.dart';

class HomeStudentRepository implements IHomeStudentRepository {
  var student = StudentModel(
    name: 'Ronaldinho',
    ra: '15.01310-3',
  );

  var lecture = ClassesModel(
      local: 'H101',
      subjectEnum: SubjectEnum.RESMAT,
      startHour: DateTime.now(),
    );

  @override
  Future<StudentModel> getStudent() {
    return Future.value(student);
  }

  @override
  Future<List<ClassesModel>> getClass() async {
    await Future.delayed(Duration(seconds: 1));
    return Future.value([lecture, lecture]);
  }
}
