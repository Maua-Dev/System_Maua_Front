import 'package:system_maua_front/app/shared/models/student_model.dart';
import 'package:system_maua_front/app/shared/models/classes_model.dart';

abstract class IHomeRepository {
  Future<StudentModel> getUser();
  Future<List<ClassesModel>> getClass();
}
