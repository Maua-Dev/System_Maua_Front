import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';

class ClassesModel {
  final SubjectEnum? subjectEnum;
  final String local;
  final DateTime startHour;

  ClassesModel(
      {required this.subjectEnum,
      required this.local,
      required this.startHour});

  factory ClassesModel.newInstance() {
    return ClassesModel(
        subjectEnum: null, local: '', startHour: DateTime.now());
  }
}
