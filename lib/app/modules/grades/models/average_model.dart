import 'averages_model.dart';

class AverageModel {
  final String graduationName;
  final int year;
  final List<AveragesModel> averages;

  AverageModel({
    required this.graduationName,
    required this.year,
    required this.averages,
  });

  factory AverageModel.fromJson(Map data) {
    return AverageModel(
      graduationName: data['graduationName'] as String,
      year: data['year'] as int,
      averages: (data['averages'] as List)
          .map((e) => AveragesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  factory AverageModel.newInstance() {
    return AverageModel(
      graduationName: '',
      year: 2021,
      averages: [],
    );
  }
}
