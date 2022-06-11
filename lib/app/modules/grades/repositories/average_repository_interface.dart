import 'package:system_maua_front/app/modules/grades/models/average_model.dart';

abstract class IAverageRepository {
  Future<AverageModel> getAverage();
}
