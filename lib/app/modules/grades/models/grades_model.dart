import 'package:system_maua_front/app/modules/grades/enumerates/grades_enum.dart';

class GradesModel {
  final GradesEnum grade;
  final double? value;
  final double? heft;

  GradesModel({
    required this.grade,
    this.value,
    this.heft,
  });
}
