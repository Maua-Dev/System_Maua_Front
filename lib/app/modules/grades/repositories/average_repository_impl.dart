import 'package:dio/dio.dart';
import 'package:system_maua_front/app/modules/grades/models/average_model.dart';
import 'package:system_maua_front/app/modules/grades/repositories/average_repository_interface.dart';

class AverageRepositoryImpl implements IAverageRepository {
  final Dio dioClient;

  AverageRepositoryImpl(this.dioClient);

  @override
  Future<AverageModel> getAverage() async {
    final res = await dioClient
        .get<Map<String, dynamic>>('/appmaua_subjects/Subjects/1');
    return AverageModel.fromJson(res.data!);
  }
}
