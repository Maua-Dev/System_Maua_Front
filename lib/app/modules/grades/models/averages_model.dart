import 'package:system_maua_front/app/modules/grades/models/grades_model.dart';

class AveragesModel {
  final String subject;
  final double parcialAverage;
  final double currentNote;
  final List<GradesModel> tests;
  final List<GradesModel> tasks;
  final double globalAverage;

  AveragesModel({
    required this.subject,
    required this.parcialAverage,
    required this.currentNote,
    required this.tasks,
    required this.tests,
    required this.globalAverage,
  });

  String mediaComputada(String value) {
    return '${value.replaceAll('.', ',')}';
  }

  String get getMediaComputada =>
      mediaComputada(parcialAverage.toStringAsFixed(1));

  factory AveragesModel.fromJson(Map<String, dynamic> json) {
    return AveragesModel(
      subject: json['materia'] as String,
      parcialAverage: json['media'] as double,
      currentNote: json['currentNote'] as double,
      tasks: json['tasks'] as List<GradesModel>,
      tests: json['tests'] as List<GradesModel>,
      globalAverage: json['globalAverage'] as double,
    );
  }
}
